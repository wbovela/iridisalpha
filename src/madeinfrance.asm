; This is the reverse-engineered source code for the game 'Iridis Alpha'
; written by Jeff Minter in 1986.
;
; The code in this file was created by disassembling a binary of the game released into
; the public domain by Jeff Minter in 2019.
;
; The original code from which this source is derived is the copyright of Jeff Minter.
;
; The original home of this file is at: https://github.com/mwenge/iridisalpha
;
; To the extent to which any copyright may apply to the act of disassembling and reconstructing
; the code from its binary, the author disclaims copyright to this source code.  In place of
; a legal notice, here is a blessing:
;
;    May you do good and not evil.
;    May you find forgiveness for yourself and forgive others.
;    May you share freely, never taking more than you give.
;

;-----------------------------------------------------------------------------------------
; LaunchMIF
;-----------------------------------------------------------------------------------------
LaunchMIF
        SEI 
        LDA #$00
        STA $D020    ;Border Color
        STA $D021    ;Background Color 0
        LDA #$15
        STA $D018    ;VIC Memory Control Register
        LDA #$0F
        STA $D418    ;Select Filter Mode and Volume
        LDA #$00
        STA $D405    ;Voice 1: Attack / Decay Cycle Control
        STA $D40C    ;Voice 2: Attack / Decay Cycle Control
        STA $D413    ;Voice 3: Attack / Decay Cycle Control
        STA mifGameOver
        LDA #$F0
        STA $D406    ;Voice 1: Sustain / Release Cycle Control
        STA $D40D    ;Voice 2: Sustain / Release Cycle Control
        STA $D414    ;Voice 3: Sustain / Release Cycle Control

        ; Init_ScreenPointerArray
        LDA #>SCREEN_RAM
        STA planetPtrHi
        LDA #<SCREEN_RAM
        STA planetPtrLo
        LDX #$00
b4109   LDA planetPtrLo
        STA screenLinePtrLo,X
        LDA planetPtrHi
        STA screenLinePtrHi,X
        LDA planetPtrLo
        CLC 
        ADC #$28
        STA planetPtrLo
        LDA planetPtrHi
        ADC #$00
        STA planetPtrHi
        INX 
        CPX #$1A
        BNE b4109

        ;Clear screen
        LDX #$00
        LDA #$20
b4129   STA SCREEN_RAM,X
        STA SCREEN_RAM + LINE6_COL16,X
        STA SCREEN_RAM + LINE12_COL32,X
        STA SCREEN_RAM + LINE19_COL0,X
        DEX 
        BNE b4129

        JMP MIF_RunUntilPlayerUnpauses

mifCurrentCharColor .BYTE $00
mifCurrentXPos      .BYTE $00
mifCurrentYPos      .BYTE $00
mifCurrentChar      .BYTE $00
mifSnakeColorArray  .BYTE RED,ORANGE,YELLOW,GREEN,LTBLUE,PURPLE,BLUE,BLACK
mifSnakeSpeed       .BYTE $03
snakeAnimationRate               .BYTE $03
;------------------------------------------------------------------------
; MIF_PutCharAtCurrPosInAccumulator
;------------------------------------------------------------------------
MIF_PutCharAtCurrPosInAccumulator   
        LDX mifCurrentYPos
        LDY mifCurrentXPos
        LDA screenLinePtrLo,X
        STA planetPtrLo
        LDA screenLinePtrHi,X
        STA planetPtrHi
        LDA (planetPtrLo),Y
        RTS 

;------------------------------------------------------------------------
; MIF_DrawCurrentCharAtCurrentPos
;------------------------------------------------------------------------
MIF_DrawCurrentCharAtCurrentPos   
        JSR MIF_PutCharAtCurrPosInAccumulator
        LDA mifCurrentChar
        STA (planetPtrLo),Y
        LDA planetPtrHi
        PHA 
        CLC 
        ; Move to Hi ptr to Color Ram so we can paint the
        ; character's color
        ADC #$D4
        STA planetPtrHi
        LDA mifCurrentCharColor
        STA (planetPtrLo),Y
        PLA 
        STA planetPtrHi
        RTS 

snakeXPosArray = *-$01
               .BYTE $0A,$09,$08,$07,$06,$05
initialMIFXPos .BYTE $04,$03
snakeYPosArray = *-$01  
               .BYTE $0C,$0C,$0C,$0C,$0C,$0C
initialMIFYPos .BYTE $0C
;------------------------------------------------------------------------
; MIF_SetUpInterruptHandler
;------------------------------------------------------------------------
MIF_SetUpInterruptHandler   
        LDA #<MIF_InterruptHandler
        STA $0314    ;IRQ
        LDA #>MIF_InterruptHandler
        STA $0315    ;IRQ
        LDA $D011    ;VIC Control Register 1
        AND #$7F
        STA $D011    ;VIC Control Register 1
        LDA #$FE
        STA $D012    ;Raster Position
        LDA #$01
        STA $D019    ;VIC Interrupt Request Register (IRR)
        STA $D01A    ;VIC Interrupt Mask Register (IMR)
        CLI 
        RTS 

;------------------------------------------------------------------------
; MIF_RunUntilPlayerUnpauses
;------------------------------------------------------------------------
MIF_RunUntilPlayerUnpauses   
        JSR MIF_InitializeProgressBar
        JSR MIF_DrawCountdownBarAndCredit
        JSR MIF_UpdateProgressBar
        JSR MIF_SetUpInterruptHandler
b41B1   LDA lastKeyPressed
        CMP #$40 ; 'No key pressed'
        BNE b41B1

        LDA #$00
        STA $D015    ;Sprite display Enable

b41BC   LDA lastKeyPressed
        CMP #$04 ; F1
        BNE b41C3
        ;F1 was pressed, so exit MIF back to game.
        RTS 

b41C3   CMP #$31; '*' Pressed
        BNE b41D8

b41C7   LDA lastKeyPressed
        CMP #$40 ; 'No key pressed'
        BNE b41C7

        ; Launch DNA mode
        LDA #$01
        STA mifDNAPauseModeActive
        JSR EnterMainTitleScreen
        JMP LaunchMIF

b41D8   LDA mifGameOver
        BEQ b41BC
        JMP LaunchMIF

;------------------------------------------------------------------------
; MIF_InterruptHandler
;------------------------------------------------------------------------
MIF_InterruptHandler   
        LDA $D019    ;VIC Interrupt Request Register (IRR)
        AND #$01
        BNE b41ED
        PLA 
        TAY 
        PLA 
        TAX 
        PLA 
        RTI 

b41ED   JSR UpdateSnakePositionAndCheckInput
        JSR MIF_UpdateCountdownBar
        JSR MIF_PlaySound
        JSR MIF_UpdateTarget
        LDA #$01
        STA $D019    ;VIC Interrupt Request Register (IRR)
        STA $D01A    ;VIC Interrupt Mask Register (IMR)
        LDA #$FE
        STA $D012    ;Raster Position
        JMP $EA31

snakeXPosIncrement   .BYTE $01
snakeYPosIncrement   .BYTE $00
;------------------------------------------------------------------------
; UpdateSnakePositionAndCheckInput
;------------------------------------------------------------------------
UpdateSnakePositionAndCheckInput   
        DEC snakeAnimationRate
        BEQ b4211
        RTS 

b4211   LDA mifSnakeSpeed
        STA snakeAnimationRate
        LDA a4588
        BEQ b4224

        LDA #$00
        STA a4588
        JMP j42BD

b4224   LDA initialMIFXPos
        STA mifCurrentXPos
        LDA initialMIFYPos
        STA mifCurrentYPos
        JSR MIF_ClearCharAtCurrentPosIfIsSnakeSegment

        LDX #$06
b4235   LDA snakeXPosArray,X
        STA snakeXPosArray + $01,X
        LDA snakeYPosArray,X
        STA snakeYPosArray + $01,X
        DEX 
        BNE b4235

j4244   
        LDA snakeXPosArray + $01
        CLC 
        ADC snakeXPosIncrement
        STA snakeXPosArray + $01
        CMP #$FF
        BNE b425A
        LDA #$26
        STA snakeXPosArray + $01
        JMP j4263

b425A   CMP #$27
        BNE j4263
        LDA #$00
        STA snakeXPosArray + $01

j4263   
        LDA snakeYPosArray + $01
        CLC 
        ADC snakeYPosIncrement
        STA snakeYPosArray + $01
        CMP #$FF
        BNE b4279
        LDA #$16
        STA snakeYPosArray + $01
        JMP j4282

b4279   CMP #$17
        BNE j4282
        LDA #$00
        STA snakeYPosArray + $01

j4282   
        JSR MIF_CheckInputForAddingDeflectors
        LDA snakeXPosArray + $01
        STA mifCurrentXPos
        LDA snakeYPosArray + $01
        STA mifCurrentYPos
        JSR MIF_PutCharAtCurrPosInAccumulator
        JSR MIF_CheckSnakeCollisionWithDeflectors

        ; Draw the rest of the snake
        LDX #$00
b4299   LDA snakeXPosArray + $01,X
        STA mifCurrentXPos
        LDA snakeYPosArray + $01,X
        STA mifCurrentYPos
        LDA #$A0
        STA mifCurrentChar
        LDA mifSnakeColorArray,X
        STA mifCurrentCharColor
        TXA 
        PHA 
        JSR MIF_DrawCurrentCharAtCurrentPos
        PLA 
        TAX 
        INX 
        CPX #$07
        BNE b4299

b42BC   RTS 

j42BD   
        LDA snakeXPosArray + $01
        STA mifCurrentXPos
        LDA snakeYPosArray + $01
        STA mifCurrentYPos
        JMP j4282

;------------------------------------------------------------------------
; MIF_ClearCharAtCurrentPosIfIsSnakeSegment
;------------------------------------------------------------------------
MIF_ClearCharAtCurrentPosIfIsSnakeSegment   
        JSR MIF_PutCharAtCurrPosInAccumulator
        CMP #$A0
        BNE b42BC
        LDA #$20
        STA (planetPtrLo),Y
b42D7   RTS 

mifPreviousKeyPress   .BYTE $40 

;------------------------------------------------------------------------
; MIF_CheckInputForAddingDeflectors
;------------------------------------------------------------------------
MIF_CheckInputForAddingDeflectors   
        LDA lastKeyPressed
        CMP mifPreviousKeyPress
        BNE b42E1
        RTS 

b42E1   STA mifPreviousKeyPress
        CMP #$40
        BEQ b42D7
        PHA 
        LDA snakeXPosArray + $01
        STA mifCurrentXPos
        LDA snakeYPosArray + $01
        STA mifCurrentYPos
        PLA 
        CMP #$27
        BNE b4307
        ; 'N' pressed, make left-facing reflector current character
        LDA #$4E
        STA mifCurrentChar

j42FF   
        LDA #$01
        STA mifCurrentCharColor
        JMP MIF_DrawCurrentCharAtCurrentPos
        ; Returns

b4307   CMP #$24
        BNE b4313

        ; 'M' pressed, make right-facing reflector current character
        LDA #$4D
        STA mifCurrentChar
        JMP j42FF

b4313   CMP #$3C
        BNE b4321

        ; Space pressed. Update speed.
        DEC mifSnakeSpeed
        BNE b4321
        LDA #$04
        STA mifSnakeSpeed
b4321   RTS 

        .BYTE $01,$00,$FF,$00,$01,$00,$FF,$00
;------------------------------------------------------------------------
; MIF_CheckSnakeCollisionWithDeflectors
;------------------------------------------------------------------------
MIF_CheckSnakeCollisionWithDeflectors   
        CMP #$4D
        BNE b434F
        LDA #$4E
        STA (planetPtrLo),Y
        LDA snakeXPosIncrement
        PHA 
        LDA snakeYPosIncrement
        STA snakeXPosIncrement
        PLA 
        STA snakeYPosIncrement
        PLA 
        PLA 
        LDA #$01
        STA a4588

j4347   
        LDA #$04
        STA soundControl1
        JMP j4244

b434F   CMP #$4E
        BNE b4379
        LDA #$4D
        STA (planetPtrLo),Y
        LDA snakeXPosIncrement
        EOR #$FF
        CLC 
        ADC #$01
        PHA 
        LDA snakeYPosIncrement
        EOR #$FF
        CLC 
        ADC #$01
        STA snakeXPosIncrement
        PLA 
        STA snakeYPosIncrement
        PLA 
        PLA 
        LDA #$01
        STA a4588
        JMP j4347

b4379   CMP #$51
        BNE b439B
        LDA #$20
        STA soundControl2
        LDA #$20
        STA (planetPtrLo),Y
        LDA #$01
        STA nextOffsetToApplyToSnakePos
        INC updateTargetRate
        JSR CalculateProgressAndUpdateBar
        JSR MIF_DrawCountdownBarAndCredit
        RTS 

RandomValue   =*+$01
;------------------------------------------------------------------------
; MIF_PutRandomValueInAccumulator
;------------------------------------------------------------------------
MIF_PutRandomValueInAccumulator   
        LDA $EF00
        INC RandomValue
b439B   RTS 

updateTargetRate   .BYTE $00
;------------------------------------------------------------------------
; MIF_UpdateTarget
;------------------------------------------------------------------------
MIF_UpdateTarget   
        LDA updateTargetRate
        BNE b43BD

        JSR MIF_PutRandomValueInAccumulator
        AND #$1F
        CLC 
        ADC #$03
        STA mifRandomXPos

        JSR MIF_PutRandomValueInAccumulator
        AND #$0F
        CLC 
        ADC #$03
        STA mifRandomYPos

        LDA #$01
        STA updateTargetRate

b43BD   CMP #$01
        BNE b43E7

        ; Place the target
        LDA #$51
        STA mifCurrentChar
        INC mifTargetCurrentColor
        LDA mifTargetCurrentColor
        AND #$07
        TAX 
        LDA mifSnakeColorArray,X
        STA mifCurrentCharColor
        LDA mifRandomXPos
        STA mifCurrentXPos
        LDA mifRandomYPos
        STA mifCurrentYPos
        JMP MIF_DrawCurrentCharAtCurrentPos
        ; Returns

mifRandomXPos   .BYTE $00
mifRandomYPos   .BYTE $00
mifTargetCurrentColor   .BYTE $00

;------------------------------------------------------------------------
; b43E7   
;------------------------------------------------------------------------
b43E7
		    LDA #$A0
        STA mifCurrentChar
        LDA nextOffsetToApplyToSnakePos
        STA offsetToApplyToSnakePos
        LDA #$00
        STA mifTargetCurrentColor

b43F7   JSR MIF_UpdateSnakePositionOnScreen
        INC mifTargetCurrentColor
        LDA mifTargetCurrentColor
        CMP #$08
        BEQ b4409
        DEC offsetToApplyToSnakePos
        BNE b43F7

b4409   INC nextOffsetToApplyToSnakePos
        LDA nextOffsetToApplyToSnakePos
        CMP #$30
        BEQ b4414
        RTS 

b4414   LDA #$00
        STA updateTargetRate
        RTS 

;------------------------------------------------------------------------
; MIF_UpdateSnakePositionOnScreen
;------------------------------------------------------------------------
MIF_UpdateSnakePositionOnScreen   
        LDX mifTargetCurrentColor
        LDA mifSnakeColorArray,X
        STA mifCurrentCharColor
        LDA mifRandomXPos
        SEC 
        SBC offsetToApplyToSnakePos
        STA mifCurrentXPos
        LDA mifRandomYPos
        SEC 
        SBC offsetToApplyToSnakePos
        STA mifCurrentYPos
        JSR MIF_DrawCharacterIfItsStillOnScreen
        LDA mifCurrentXPos
        CLC 
        ADC offsetToApplyToSnakePos
        STA mifCurrentXPos
        JSR MIF_DrawCharacterIfItsStillOnScreen
        LDA mifCurrentXPos
        CLC 
        ADC offsetToApplyToSnakePos
        STA mifCurrentXPos
        JSR MIF_DrawCharacterIfItsStillOnScreen
        LDA mifCurrentYPos
        CLC 
        ADC offsetToApplyToSnakePos
        STA mifCurrentYPos
        JSR MIF_DrawCharacterIfItsStillOnScreen
        LDA mifCurrentYPos
        CLC 
        ADC offsetToApplyToSnakePos
        STA mifCurrentYPos
        JSR MIF_DrawCharacterIfItsStillOnScreen
        LDA mifCurrentXPos
        SEC 
        SBC offsetToApplyToSnakePos
        STA mifCurrentXPos
        JSR MIF_DrawCharacterIfItsStillOnScreen
        LDA mifCurrentXPos
        SEC 
        SBC offsetToApplyToSnakePos
        STA mifCurrentXPos
        JSR MIF_DrawCharacterIfItsStillOnScreen
        LDA mifCurrentYPos
        SEC 
        SBC offsetToApplyToSnakePos
        STA mifCurrentYPos

;------------------------------------------------------------------------
; MIF_DrawCharacterIfItsStillOnScreen
;------------------------------------------------------------------------
MIF_DrawCharacterIfItsStillOnScreen   
        LDA mifCurrentXPos
        BMI b449B
        CMP #$27
        BMI b449C
b449B   RTS 

b449C   LDA mifCurrentYPos
        BMI b449B
        CMP #$16
        BMI b44A6
        RTS 

b44A6   JMP MIF_DrawCurrentCharAtCurrentPos

nextOffsetToApplyToSnakePos   .BYTE $00
offsetToApplyToSnakePos   .BYTE $00
;------------------------------------------------------------------------
; MIF_InitializeProgressBar
;------------------------------------------------------------------------
MIF_InitializeProgressBar   
        LDA #$00
        STA mifCurrentXPos

        LDA #$20
        STA mifCurrentChar

        LDA #$17
        STA mifCurrentYPos
        
b44BA   LDX mifCurrentXPos
        LDA mifProgressBarColors,X
        STA mifCurrentCharColor
        JSR MIF_DrawCurrentCharAtCurrentPos
        INC mifCurrentYPos
        JSR MIF_DrawCurrentCharAtCurrentPos
        DEC mifCurrentYPos
        INC mifCurrentXPos
        LDA mifCurrentXPos
        CMP #$28
        BNE b44BA

        LDA #$00
        STA a44DF
        RTS 

a44DF                .BYTE $00
mifProgressBarColors .BYTE RED,RED,RED,RED,RED,RED,ORANGE,ORANGE
                     .BYTE ORANGE,ORANGE,ORANGE,ORANGE,YELLOW,YELLOW,YELLOW,YELLOW
                     .BYTE YELLOW,GREEN,GREEN,GREEN,GREEN,GREEN,GREEN,GRAY1
                     .BYTE GRAY1,GRAY1,GRAY1,GRAY1,PURPLE,PURPLE,PURPLE,PURPLE
                     .BYTE PURPLE,PURPLE,BLUE,BLUE,BLUE,BLUE,BLUE,BLUE
progressToDraw       .BYTE $00
progressBarChars2    .BYTE $20,$65,$74,$75,$61,$F6,$EA,$E7
                     .BYTE $A0
;------------------------------------------------------------------------
; CalculateProgressAndUpdateBar
;------------------------------------------------------------------------
CalculateProgressAndUpdateBar   
        LDA mifCurrentYPosInCountdownBar
        ROR 
        ROR 
        AND #$03
        TAX 
        INX 

        LDA #$00
        STA progressToDraw

b4520   LDA #$05
        SEC 
        SBC mifSnakeSpeed
        CLC 
        ADC progressToDraw
        STA progressToDraw
        DEX 
        BNE b4520

b4530   JSR DrawSegmentOfPorgressBar
        DEC progressToDraw
        BNE b4530

        JSR MIF_UpdateProgressBar
        RTS 

;------------------------------------------------------------------------
; DrawSegmentOfPorgressBar
;------------------------------------------------------------------------
DrawSegmentOfPorgressBar   
        LDA #$18
        STA mifCurrentYPos
        LDA a44DF
        STA mifCurrentXPos
        JSR MIF_PutCharAtCurrPosInAccumulator

        LDX #$00
j454C   
        CMP progressBarChars2,X
        BEQ b4555
        INX 
        JMP j454C

b4555   CMP #$A0
        BEQ b456C
        INX 
        LDA progressBarChars2,X
        STA mifCurrentChar

j4560   
        LDX mifCurrentXPos
        LDA mifProgressBarColors,X
        STA mifCurrentCharColor
        JMP MIF_DrawCurrentCharAtCurrentPos

b456C   INC mifCurrentXPos
        INC a44DF
        LDA a44DF
        CMP #$27
        BNE b4580
        DEC a44DF
        INC mifGameOver
        RTS 

b4580   LDA #$20
        STA mifCurrentChar
        JMP j4560

a4588   .BYTE $00
;------------------------------------------------------------------------
; MIF_DrawCountdownBarAndCredit
;------------------------------------------------------------------------
MIF_DrawCountdownBarAndCredit   
        LDA #$00
        STA mifCurrentYPos
        LDA #$27
        STA mifCurrentXPos
b4593   LDX mifCurrentYPos
        LDA mifCountdownBarAndCredit,X
        CMP #$A0
        BEQ b459F
        AND #$3F
b459F   STA mifCurrentChar
        LDA mifSidebarColorArray,X
        STA mifCurrentCharColor
        JSR MIF_DrawCurrentCharAtCurrentPos
        INC mifCurrentYPos
        LDA mifCurrentYPos
        CMP #$18
        BNE b4593

        LDA #$00
        STA mifCurrentYPosInCountdownBar
b45BA   RTS 

mifCountdownBarAndCredit      .BYTE $A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0
                              .BYTE $A0,$A0,$A0,$A0,$20
.enc "petscii" 
                              .TEXT "MIF  "
.enc "none" 
															.TEXT "BY "
.enc "petscii" 
															.TEXT "YAK"
.enc "none" 
mifSidebarColorArray          .BYTE RED,RED,RED,RED,WHITE,WHITE,WHITE,WHITE
                              .BYTE BLUE,BLUE,BLUE,BLUE,BLACK,RED,WHITE,BLUE
                              .BYTE BLACK,BLACK,PURPLE,PURPLE,BLACK,YELLOW,YELLOW,YELLOW
mifCountdownBarUpdateInterval .BYTE $10
;------------------------------------------------------------------------
; MIF_UpdateCountdownBar
;------------------------------------------------------------------------
MIF_UpdateCountdownBar   
        DEC mifCountdownBarUpdateInterval
        BNE b45BA ; Returns early

        LDA #$10
        STA mifCountdownBarUpdateInterval
        LDA mifCurrentYPosInCountdownBar
        STA mifCurrentYPos
        LDA #$27
        STA mifCurrentXPos
        JSR MIF_PutCharAtCurrPosInAccumulator

        ; Increment the displayed countdown bar by one tick
        LDX #$00
b4606   CMP mifCountdownBarCharArray,X
        BEQ b460E
        INX 
        BNE b4606

b460E   CMP #$20
        BEQ b4625

        INX 
        LDA mifCountdownBarCharArray,X
        STA mifCurrentChar
        LDX mifCurrentYPosInCountdownBar
        LDA mifSidebarColorArray,X
        STA mifCurrentCharColor
        JMP MIF_DrawCurrentCharAtCurrentPos

b4625   INC mifCurrentYPosInCountdownBar
        LDA mifCurrentYPosInCountdownBar
        CMP #$0C
        BEQ MIF_CountdownOver
        RTS 

mifCurrentYPosInCountdownBar   .BYTE $00
mifCountdownBarCharArray   .BYTE $A0,$E3,$F7,$F8,$62,$79,$6F,$64,$20

MIF_CountdownOver
        ; Countdown has run out
        LDA #$00
        STA mifCurrentXPos
        STA mifCurrentYPos
        LDA #$CF
        STA mifCurrentChar
        LDA #$00
        STA indexToColorArray
        JSR MIF_ClearDownScreenBeforeRestart
        LDA #$20
        STA mifCurrentChar
        LDA #$00
        STA mifCurrentXPos
        STA mifCurrentYPos
        JSR MIF_ClearDownScreenBeforeRestart
        LDA #$01
        STA mifGameOver
        RTS 

;------------------------------------------------------------------------
; MIF_ClearDownScreenBeforeRestart
;------------------------------------------------------------------------
MIF_ClearDownScreenBeforeRestart   
        LDA mifCurrentChar
        CMP #$20
        BEQ b4684 ; This will clear the coloured lozenge pattern

        ; We're painting the coloured lozenge pattern
        INC indexToColorArray
        LDA indexToColorArray
        CMP #$06
        BNE b467B
        LDA #$00
        STA indexToColorArray
b467B   LDX indexToColorArray
        LDA mifSnakeColorArray,X
        STA mifCurrentCharColor

b4684   JSR MIF_DrawCurrentCharAtCurrentPos
        LDY #$02
b4689   LDX #$A0
b468B   DEX 
        BNE b468B
        DEY 
        BNE b4689

        INC mifCurrentXPos
        LDA mifCurrentXPos
        CMP #$27 ; keep incrementing for all columns
        BNE MIF_ClearDownScreenBeforeRestart
        LDA #$00
        STA mifCurrentXPos
        INC mifCurrentYPos
        LDA mifCurrentYPos
        CMP #$17 ; Keep incrementing for all lines
        BNE MIF_ClearDownScreenBeforeRestart
        RTS 

indexToColorArray   .BYTE $00
mifGameOver   .BYTE $00
mifCurrentProgressIndex   .BYTE $00
indexToProgressBarChars   .BYTE $00
;------------------------------------------------------------------------
; MIF_UpdateProgressBar
;------------------------------------------------------------------------
MIF_UpdateProgressBar   
        LDA #$20
        STA mifCurrentChar
        LDA #$17
        STA mifCurrentYPos
        LDA mifCurrentProgressIndex
        STA mifCurrentXPos
        JSR MIF_DrawCurrentCharAtCurrentPos
        LDA a44DF
        CMP mifCurrentProgressIndex
        BEQ b4710
        BPL b46EC

j46CC   
        LDA mifCurrentProgressIndex
        STA mifCurrentXPos
        LDA #$17
        STA mifCurrentYPos
        LDX mifCurrentProgressIndex
        LDA mifProgressBarColors,X
        STA mifCurrentCharColor
        LDX indexToProgressBarChars
        LDA progressBarChars,X
        STA mifCurrentChar
        JMP MIF_DrawCurrentCharAtCurrentPos

b46EC   LDA a44DF
        STA mifCurrentXPos
        LDA #$18
        STA mifCurrentYPos
        JSR MIF_PutCharAtCurrPosInAccumulator

        LDX #$00
b46FC   CMP progressBarChars2,X
        BEQ b4704
        INX 
        BNE b46FC

b4704   STX indexToProgressBarChars
        LDA a44DF
        STA mifCurrentProgressIndex
        JMP j46CC

b4710   LDA a44DF
        STA mifCurrentXPos
        LDA #$18
        STA mifCurrentYPos
        JSR MIF_PutCharAtCurrPosInAccumulator

        LDX #$00
b4720   CMP progressBarChars2,X
        BEQ b4728
        INX 
        BNE b4720

b4728   TXA 
        CMP indexToProgressBarChars
        BPL b4704
        RTS 

progressBarChars .BYTE $65,$65,$54,$47,$42,$5D,$48,$59
                 .BYTE $67
soundControl1    .BYTE $00
soundControl2    .BYTE $00
soundToPlay      .BYTE $C0,$40,$E0,$10
;------------------------------------------------------------------------
; MIF_PlaySound
;------------------------------------------------------------------------
MIF_PlaySound   
        LDA soundControl1
        BEQ b475A
        TAX 
        LDA #$21
        STA $D404    ;Voice 1: Control Register
        LDA soundToPlay,X
        STA $D401    ;Voice 1: Frequency Control - High-Byte
        DEC soundControl1
        BNE b475A
        LDA #$80
        STA $D404    ;Voice 1: Control Register
b4759   RTS 

b475A   LDA soundControl2
        BEQ b4759
        LDA #$00
        STA $D407    ;Voice 2: Frequency Control - Low-Byte
        LDA #$20
        STA $D40E    ;Voice 3: Frequency Control - Low-Byte
        LDA #$21
        STA $D40B    ;Voice 2: Control Register
        STA $D412    ;Voice 3: Control Register
        LDA soundControl2
        STA $D408    ;Voice 2: Frequency Control - High-Byte
        STA $D40F    ;Voice 3: Frequency Control - High-Byte
        DEC soundControl2
        BNE b4759
        LDA #$80
        STA $D40B    ;Voice 2: Control Register
        STA $D412    ;Voice 3: Control Register
        RTS 

