; Level data.
; $EFF0
; Copied to $1000 by SwapTitleScreenDataAndSpriteLevelData
nullPtr = $0000
secondExplosionAnimation = $1AC0
f1A98 = $1A98
f1E58 = $1E58
LICKERSHIP = $F7
LICKERSHIP_INV = $FA

planet2Level5Data = $1000
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $05
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $F6,$F7
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $F9,$FA
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $06
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $24
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <planet2Level5Data2ndStage,>planet2Level5Data2ndStage
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet2Level5Data3rdStage,>planet2Level5Data3rdStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <planet2Level5Data2ndStage,>planet2Level5Data2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $02
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $01
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$30,$00
planet2Level5Data2ndStage = $1028
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $05
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $F7,$F8
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $FA,$FB
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $0A
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <planet2Level5Data,>planet2Level5Data
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $00
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet2Level5Data3rdStage,>planet2Level5Data3rdStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $0C
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet2Level5Data3rdStage = $1050
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $05
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $F8,$F9
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $FB,$FC
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $10
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $00
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE $00,$00
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE $00,$00
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE $00,$00
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE $00,$00
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $00
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet3Level7Data = $1078
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $07
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $F6,$F9
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $07
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $F9,$FC
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $03
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $23
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $00
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <planet3Level7Data2ndStage,>planet3Level7Data2ndStage
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <spinningRings,>spinningRings
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $01
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $02
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$20,$00
planet3Level7Data2ndStage = $10A0
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $08
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $F6,$F9
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $07
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $F9,$FC
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $03
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $01
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <planet3Level7Data,>planet3Level7Data
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet3Level7Data,>planet3Level7Data
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <planet3Level7Data,>planet3Level7Data
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $05
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet2Level6Data = $10C8
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $04
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $E8,$E9
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $E8,$E9
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $07
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $24
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $00
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <planet2Level6Data2ndStage,>planet2Level6Data2ndStage
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <secondExplosionAnimation,>secondExplosionAnimation
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <lickerShipWaveData,>lickerShipWaveData
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $01
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $02
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$20,$00
planet2Level6Data2ndStage = $10F0
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $04
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $E8,$E9
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $E8,$E9
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $07
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <planet2Level6Data,>planet2Level6Data
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <secondExplosionAnimation,>secondExplosionAnimation
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <lickerShipWaveData,>lickerShipWaveData
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $01
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $02
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
lickerShipWaveData = $1118
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $0B
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE LICKERSHIP,LICKERSHIP+$02
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $04
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE LICKERSHIP_INV,LICKERSHIP_INV+$01
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $20
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $01
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $01
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <nullPtr,>nullPtr
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <lickerShipWaveData,>lickerShipWaveData
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $02
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet1Level11Data = $1140
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $0E
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $D1,$D4
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $06
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $E4,$E7
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $03
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $68,$11
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $02
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $01
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <secondExplosionAnimation,>secondExplosionAnimation
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $04
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $05
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$10,$00
f1168 = $1168
        .BYTE $04,$E7,$E8,$00,$E7,$E8,$01,$90
        .BYTE $11,$00,$00,$00,$00,$00,$00,$20
        .BYTE <nullPtr,>nullPtr,$F8,$00,$01,$02,$00,$01
        .BYTE <nullPtr,>nullPtr,<nullPtr,>nullPtr
        .BYTE <lickerShipWaveData,>lickerShipWaveData,<default2ndStage,>default2ndStage
        .BYTE $00,$00,$00,$03,$00,$00,$00,$00
f1190 = $1190
        .BYTE $04,$E7,$E8,$00,$E7,$E8,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$20
        .BYTE <nullPtr,>nullPtr,$08,$00,$01,$02,$00,$01
        .BYTE <nullPtr,>nullPtr,<nullPtr,>nullPtr
        .BYTE <lickerShipWaveData,>lickerShipWaveData,<default2ndStage,>default2ndStage
        .BYTE $00,$00,$00,$03,$00,$00,$00,$00
planet1Level12Data = $11B8
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $09
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $30,$31
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $02
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $F9,$FB
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $FC
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $21
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <planet1Level12Data,>planet1Level12Data
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet1Level2Data2ndStage,>planet1Level2Data2ndStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $03
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $02
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$20,$00
planet1Level2Data2ndStage = $11E0
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $07
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $30,$31
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $FB,$FC
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $26
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $03
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <planet1Level12Data3rdStage,>planet1Level12Data3rdStage
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <nullPtr,>nullPtr
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <spinningRings,>spinningRings
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $00
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet1Level12Data3rdStage = $1208
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $06
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $E8,$EC
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $01
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $E8,$EC
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $01
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $01
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <nullPtr,>nullPtr
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $05
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet3Level9Data = $1230
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $06
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $31,$35
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $05
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $31,$35
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $0C
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <planet3Level9Data2ndStage,>planet3Level9Data2ndStage
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $01
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $01
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <secondExplosionAnimation,>secondExplosionAnimation
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $03
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $05
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$18,$00
planet3Level9Data2ndStage = $1258
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $0C
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $23,$27
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $02
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $23,$27
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $18
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <planet3Level9Data,>planet3Level9Data
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $80
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $80
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $80
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $80
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $00
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $03
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet5Level9Data=$1280
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $00
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $3B,$3E
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $03
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $3B,$3E
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $E0
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <planet5Level9Data2ndStage,>planet5Level9Data2ndStage
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $00
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet5Level9Data2ndStage,>planet5Level9Data2ndStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $02
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $01
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$08,$00
planet5Level9Data2ndStage=$12A8
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $02
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $3B,$3E
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $01
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $3B,$3E
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $08
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <secondExplosionAnimation,>secondExplosionAnimation
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $01
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $01
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $01
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $20
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet3Level12Data=$12D0
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $00
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $2F,$30
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $2F,$30
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $23
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <planet3Level12Data,>planet3Level12Data
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet3Level12Data2ndStage,>planet3Level12Data2ndStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $01
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $02
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$28,$00
planet3Level12Data2ndStage=$12F8
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $0B
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $2F,$30
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $2F,$30
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $25
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $01
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <secondExplosionAnimation,>secondExplosionAnimation
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $0F
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet4Level2Data=$1320
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $0E
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $D3,$D4
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $D3,$D4
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $0C
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $01
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet4Leve2Data2ndStage,>planet4Leve2Data2ndStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $04
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $01
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$10,$00
planet4Leve2Data2ndStage=$1348
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $0E
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $C8,$CC
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $03
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $DC,$DF
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $80
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <spinningRings,>spinningRings
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $25
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet1Level12Data3rdStage,>planet1Level12Data3rdStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $01
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet1Level8Data=$1370
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $11
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $FC,$FF
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $03
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $FC,$FF
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $05
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $01
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet1Level8Data2ndStage,>planet1Level8Data2ndStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <planet1Level8Data2ndStage,>planet1Level8Data2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $02
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $02
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$20,$00
planet1Level8Data2ndStage=$1398
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $10
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $FC,$FF
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $01
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $FC,$FF
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $20
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <spinningRings,>spinningRings
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $22
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $80
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <nullPtr,>nullPtr
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $10
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet1Level14Data=$13C0
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $06
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $FC,$FF
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $05
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $FC,$FF
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $03
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $70,$13
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $FA
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $01
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet1Level8Data,>planet1Level8Data
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <planet1Level8Data,>planet1Level8Data
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $08
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$10,$00
planet1Level13Data=$13E8
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $0B
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $3E,$40
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $04
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $3E,$40
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $24
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $01
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <planet1Level13Data,>planet1Level13Data
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet1Level13Data2ndStage,>planet1Level13Data2ndStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <planet1Level13Data2ndStage,>planet1Level13Data2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $04
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $02
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$20,$00
planet1Level13Data2ndStage=$1410
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $11
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $FF,$00
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $FF,$00
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $18
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <f1E58,>f1E58
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $24
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <nullPtr,>nullPtr
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $05
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet4Level7Data=$1438
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $05
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $FC,$FF
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $06
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $FC,$FF
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $E0
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <planet1Level14Data,>planet1Level14Data
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $00
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $08
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$08,$00
planet5Level12Data=$1460
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $07
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $21,$23
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $03
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $DB,$DD
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $23
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $18
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <planet1Level5Data,>planet1Level5Data
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <planet5Level12Data,>planet5Level12Data
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <nullPtr,>nullPtr
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $88
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $14
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $04
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$08,$00
f1488=$1488
        .BYTE $0B,$21,$22,$00,$DB,$DC,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$30
        .BYTE <planet5Level12Data,>planet5Level12Data,$00,$00,$00,$00,$00,$00
        .BYTE <nullPtr,>nullPtr,<nullPtr,>nullPtr
        .BYTE <nullPtr,>nullPtr,<nullPtr,>nullPtr
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
planet4Level14Data=$14B0
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $11
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $2F,$30
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $2F,$30
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $80
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $80
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $80
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $80
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $00
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet4Level14Data2ndStage,>planet4Level14Data2ndStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $10
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$18,$00
planet4Level14Data2ndStage=$14D8
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $00
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $2F,$30
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $2F,$30
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $30
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <planet4Level14Data,>planet4Level14Data
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $24
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $01
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <secondExplosionAnimation,>secondExplosionAnimation
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $05
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $06
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet5Level10Data=$1500
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $08
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $30,$31
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $30,$31
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $20
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $00
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <lickerShipWaveData,>lickerShipWaveData
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <lickerShipWaveData,>lickerShipWaveData
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $03
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $03
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$18,$00
planet2Level4Data=$1528
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $05
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $FC,$FF
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $01
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $FC,$FF
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $FC
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <secondExplosionAnimation,>secondExplosionAnimation
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $06
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $03
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$18,$00
f1550=$1550
        .BYTE $11,$FC,$FF,$01,$FC,$FF,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$30
        .BYTE <planet2Level4Data,>planet2Level4Data,$00,$00,$01,$01,$01,$01
        .BYTE <nullPtr,>nullPtr,<nullPtr,>nullPtr
        .BYTE <secondExplosionAnimation,>secondExplosionAnimation,<default2ndStage,>default2ndStage
        .BYTE $00,$00,$02,$02,$00,$00,$00,$00
planet5Level3Data=$1578
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $02
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $C1,$C7
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $04
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $D4,$DC
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $01
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $C8,$15
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $FD
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $24
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <planet5Level3Data,>planet5Level3Data
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet5Level3Data2ndStage,>planet5Level3Data2ndStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <lickerShipWaveData,>lickerShipWaveData
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $02
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $01
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$30,$00
planet5Level3Data2ndStage=$15A0
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $02
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $C1,$C7
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $04
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $D4,$DC
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $01
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $C8,$15
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $03
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $23
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <planet5Level3Data2ndStage,>planet5Level3Data2ndStage
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet5Level3Data,>planet5Level3Data
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <lickerShipWaveData,>lickerShipWaveData
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $02
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $01
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
f15C8=$15C8
        .BYTE $11,$FC,$FF,$01,$FC,$FF,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$C0
        .BYTE <default2ndStage,>default2ndStage,$00,$00,$00,$00,$00,$00
        .BYTE <nullPtr,>nullPtr,<nullPtr,>nullPtr
        .BYTE <default2ndStage,>default2ndStage,<default2ndStage,>default2ndStage
        .BYTE $00,$00,$00,$08,$00,$00,$00,$00
f15F0=$15F0
        .BYTE $00,$FF,$00,$00,$FF,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$00
        .BYTE <nullPtr,>nullPtr,$00,$00,$00,$00,$00,$00
        .BYTE <nullPtr,>nullPtr,<nullPtr,>nullPtr
        .BYTE <f1618,>f1618,<default2ndStage,>default2ndStage
        .BYTE $00,$00,$00,$08,$00,$04,$10,$00
f1618=$1618
        .BYTE $11,$FF,$00,$00,$FF,$00,$00,$00
        .BYTE $00,$00,$00,$00,$00,$00,$00,$10
        .BYTE <planet1Level13Data2ndStage,>planet1Level13Data2ndStage,$00,$00,$00,$00,$00,$00
        .BYTE <nullPtr,>nullPtr,<nullPtr,>nullPtr
        .BYTE <nullPtr,>nullPtr,<default2ndStage,>default2ndStage
        .BYTE $00,$00,$00,$08,$00,$00,$00,$00
planet3Level11Data=$1640
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $04
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $F6,$F8
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $05
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $F9,$FB
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $FD
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $21
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <planet3Level11Data,>planet3Level11Data
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet3Level11Data2ndStage,>planet3Level11Data2ndStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $08
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$20,$00
planet3Level11Data2ndStage=$1668
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $10
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $F8,$F9
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $FB,$FC
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $10
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <f1A98,>f1A98
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $25
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $01
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <nullPtr,>nullPtr
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $08
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet5Level11Data=$1690
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $06
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $23,$27
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $04
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $23,$27
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $0C
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <planet5Level11Data,>planet5Level11Data
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $10
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $01
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet5Level11Data2ndStage,>planet5Level11Data2ndStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $03
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $02
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$18,$00
planet5Level11Data2ndStage=$16B8
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $11
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $23,$24
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $23,$24
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $10
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <planet5Level11Data3rdStage,>planet5Level11Data3rdStage
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $00
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <nullPtr,>nullPtr
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $10
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet5Level11Data3rdStage=$16E0
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $00
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $FF,$00
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $FF,$00
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $30
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <spinningRings,>spinningRings
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $00
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <nullPtr,>nullPtr
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $10
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet5Level4Data=$1708
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $0E
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $FC,$FF
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $04
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $FC,$FF
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $10
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <planet5Level5Data2ndStage,>planet5Level5Data2ndStage
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $01
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $00
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <spinningRings,>spinningRings
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <lickerShipWaveData,>lickerShipWaveData
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $02
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $02
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$20,$00
planet5Level5Data2ndStage=$1730
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $0A
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $FC,$FF
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $02
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $FC,$FF
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $20
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <planet5Level4Data,>planet5Level4Data
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $01
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <spinningRings,>spinningRings
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <lickerShipWaveData,>lickerShipWaveData
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $02
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $02
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet4Level8Data=$1758
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $00
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $FF,$00
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $FF,$00
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $00
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet4Level8Data,>planet4Level8Data
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <planet4Level8Data2ndStage,>planet4Level8Data2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $00
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$20,$00
planet4Level8Data2ndStage=$1780
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $11
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $FF,$00
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $FF,$00
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $30
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <planet1Level12Data3rdStage,>planet1Level12Data3rdStage
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $00
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <spinningRings,>spinningRings
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <nullPtr,>nullPtr
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $03
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $03
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet4Level9Data=$17A8
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $11
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $3E,$40
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $04
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $3E,$40
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $80
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $25
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $80
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <planet4Level9Data2ndStage,>planet4Level9Data2ndStage
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <spinningRings,>spinningRings
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <lickerShipWaveData,>lickerShipWaveData
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $04
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $01
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$20,$00
planet4Level9Data2ndStage=$17D0
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $0B
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $3E,$3F
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $3E,$3F
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $05
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <planet4Level9Data,>planet4Level9Data
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $01
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $00
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <spinningRings,>spinningRings
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <lickerShipWaveData,>lickerShipWaveData
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $04
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $01
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00

        .BYTE $00,$00,$00,$00,$00,$00,$00,$00

planet1Level5Data=$1800
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $11
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $21,$22
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $23,$24
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $FC
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $23
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <planet1Level5Data2ndStage,>planet1Level5Data2ndStage
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet1Level5Data3rdStage,>planet1Level5Data3rdStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $05
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $04,$20,$00
planet1Level5Data2ndStage=$1828
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $07
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $22,$23
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $24,$25
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $04
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <planet1Level5Data,>planet1Level5Data
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $00
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet1Level5Data3rdStage,>planet1Level5Data3rdStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $04
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
spinningRings=$1850
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $11
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $E8,$EC
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $01
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $E8,$EC
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $30
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $00
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $00
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $00
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <nullPtr,>nullPtr
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $00
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $01
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet1Level5Data3rdStage=$1878
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $03
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $28,$29
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $28,$29
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $10
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <planet1Level5Data4thStage,>planet1Level5Data4thStage
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $01
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $01
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $00
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <planet1Level5Data4thStage,>planet1Level5Data4thStage
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $01
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $02
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet1Level5Data4thStage=$18A0
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $04
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $29,$2A
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $29,$2A
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $40
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <planet1Level5Data3rdStage,>planet1Level5Data3rdStage
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $04
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $02
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $01
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <spinningRings,>spinningRings
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $01
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $02
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
default2ndStage = $18C8
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $07
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $ED,$F0
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $03
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $ED,$F0
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $00
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $00,$00
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $01
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $0D
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $80
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $80
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $00
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <nullPtr,>nullPtr
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <nullPtr,>nullPtr
        ; Byte 33 (Index $20): Unused.
        .BYTE $00
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $00
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $00
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $00
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $00
        ; Byte 38-40: (Index $25-$27) Unused bytes.
        .BYTE $00,$00,$00
planet4Level19Data=$18F0
        ; Byte 1 (Index $00): An index into colorsForAttackShips that applies a
        ; color value for the ship sprite.
        .BYTE $06
        ; Byte 2 (Index $01): Sprite value for the attack ship for the upper planet.
        ; Byte 3 (Index $02): The 'end' sprite value for the attack ship's animation
        ; for the upper planet.
        .BYTE $2A,$2B
        ; Byte 4 (Index $03): The animation frame rate for the attack ship.
        .BYTE $00
        ; Byte 5 (Index $04): Sprite value for the attack ship for the lower planet.
        ; Byte 6 (Index $05): The 'end' sprite value for the ship's lower planet animation.
        .BYTE $2B,$2C
        ; Byte 7 (Index $06): Whether a specific attack behaviour is used.
        .BYTE $01
        ; Byte 8 (Index $07): Lo Ptr for an unused attack behaviour
        ; Byte 9 (Index $08): Hi Ptr for an unused attack behaviour
        .BYTE $18,$19
        ; Byte 10 (Index $09): Lo Ptr for an animation effect? (Doesn't seem to be used?) 
        ; Byte 11 (Index $0A): Hi Ptr for an animation effect (Doesn't seem to be used?)?
        .BYTE $00,$00
        ; Byte 12 (Index $0B): some kind of rate limiting for attack wave 
        .BYTE $00
        ; Byte 13 (Index $0C): Lo Ptr for a stage in wave data (never used).
        ; Byte 14 (Index $0D): Hi Ptr for a stage in wave data (never used). 
        .BYTE $00,$00
        ; Byte 15 (Index $0E): Controls the rate at which new enemies are added? 
        .BYTE $00
        ; Byte 16 (Index $0F): Update rate for attack wave 
        .BYTE $00
        ; Byte 17 (Index $10): Lo Ptr to the wave data we switch to when first hit. 
        ; Byte 18 (Index $11): Hi Ptr to the wave data we switch to when first hit.
        .BYTE <nullPtr,>nullPtr
        ; Byte 19 (Index $12): X Pos movement for attack ship.
        .BYTE $01
        ; Byte 20 (Index $13): Y Pos movement pattern for attack ship.
        ; An index into yPosMovementPatternForShips1
        .BYTE $00
        ; Byte 21 (Index $14): X Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 22 (Index $15): Y Pos Frame Rate for Attack ship.
        .BYTE $01
        ; Byte 23 (Index $16): Stickiness factor, does the enemy stick to the player
        ; sapping their energy if they're near them?
        .BYTE $00
        ; Byte 24 (Index $17): Does the enemy gravitate quickly toward the player when its
        ; been shot? (Typical lickership behaviour) 
        .BYTE $23
        ; Byte 25 (Index $18): Lo Ptr for another set of wave data. 
        ; Byte 26 (Index $19): Hi Ptr for another set of wave data.
        .BYTE <nullPtr,>nullPtr
        ; Byte 27 (Index $1A): Lo Ptr for another set of wave data.
        ; Byte 28 (Index $1B): Hi Ptr for another set of wave data.
        .BYTE <planet4Level19Data,>planet4Level19Data
        ; Byte 29 (Index $1C): Lo Ptr for Explosion animation. 
        ; Byte 30 (Index $1D): Hi Ptr for Explosion animation. 
        .BYTE <spinningRings,>spinningRings
        ; Byte 31 (Index $1E): Lo Ptr for another set of wave data for this level. 
        ; Byte 32 (Index $1F): Hi Ptr for another set of wave data for this level. 
        .BYTE <default2ndStage,>default2ndStage
        ; Byte 33 (Index $20): Unused.
        .BYTE $BD
        ; Byte 34 (Index $21): Whether to load the extra stage data for this enemy. 
        .BYTE $BD
        ; Byte 35 (Index $22)): Points multiplier for hitting enemies in this level. 
        .BYTE $BD
        ; Byte 36: (Index $23): Does hitting this enemy increase the gilby's energy? 
        .BYTE $BD
        ; Byte 37: (Index $24) Is the ship a spinning ring, i.e. does it allow the gilby to warp?  
        .BYTE $BD
        ; Byte 38-40: (Index $25-$27) Unused bytes.

; vim: tabstop=2 shiftwidth=2 expandtab
