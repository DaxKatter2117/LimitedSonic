BGM_LimitBoss_Header:
	smpsHeaderStartSong	1
	smpsHeaderVoice		BGM_LimitBoss_Voices
	smpsHeaderChan		$06, $02
	smpsHeaderTempo		$02, $04

	smpsHeaderDAC		BGM_LimitBoss_DAC
	smpsHeaderFM		BGM_LimitBoss_FM1,  $F4, $12
	smpsHeaderFM		BGM_LimitBoss_FM2,  $E8, $08
	smpsHeaderFM		BGM_LimitBoss_FM3,  $F4, $0F
	smpsHeaderFM		BGM_LimitBoss_FM4,  $F4, $12
	smpsHeaderFM		BGM_LimitBoss_FM5,  $E8, $0F
	smpsHeaderPSG		BGM_LimitBoss_PSG1, $D0, $03, $00, fTone_05
	smpsHeaderPSG		BGM_LimitBoss_PSG2, $D0, $03, $00, fTone_05

; FM5 Data
BGM_LimitBoss_FM5:
	smpsSetvoice	$03

BGM_LimitBoss_Jump03:
	dc.b	nFs7, $0C, nFs7, nFs7, nFs7
	smpsAlterVol	$02
	smpsCall	BGM_LimitBoss_Call03
	dc.b	nFs6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs7, nFs6
	dc.b	nFs6, nFs6
	smpsCall	BGM_LimitBoss_Call03
	dc.b	nFs6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs7, nFs6
	dc.b	nFs7, nFs7
	smpsAlterVol	$FE

BGM_LimitBoss_Loop01:
	dc.b	nFs7, $03, nFs7, nFs7, nFs7
	smpsLoop	$00, $04, BGM_LimitBoss_Loop01
	smpsJump	BGM_LimitBoss_Jump03

BGM_LimitBoss_Call03:
	dc.b	nFs6, $06, nFs6, nFs7, nFs6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs7
	dc.b	nFs6, nFs6, nFs6, nFs6, nFs6, nFs6, nFs6
	smpsReturn

; FM2 Data
BGM_LimitBoss_FM2:
	smpsSetvoice	$00

BGM_LimitBoss_Jump02:
	dc.b	nFs4, $06, nFs5, nFs4, nFs5, nFs4, nFs5, nFs4, nFs5
	smpsCall	BGM_LimitBoss_Call02
	dc.b	nFs3, $06, nFs4, nFs4, $0C, nFs3, $06
	smpsCall	BGM_LimitBoss_Call02
	dc.b	nFs4, $06, $06, $0C, $06, $30
	smpsJump	BGM_LimitBoss_Jump02

BGM_LimitBoss_Call02:
	dc.b	nFs3, $06, nFs3, nFs4, nFs4, nFs4, nFs4, nFs4, nFs4, nFs3, $12, nFs4
	dc.b	$06, $0C, $0C, $06, $0C, $06, $06, $0C, $06, $06, $0C
	smpsReturn

; PSG2 Data
BGM_LimitBoss_PSG2:
	smpsAlterNote	$02
	smpsJump	BGM_LimitBoss_Jump01

; FM3 Data
BGM_LimitBoss_FM3:
	smpsSetvoice	$01
	smpsPan		panLeft, $00

BGM_LimitBoss_Jump01:
	dc.b	nRst, $30
	smpsCall	BGM_LimitBoss_Call01
	dc.b	nFs5, $12, nRst, nFs6, $03, nRst, nFs6, nRst, nFs5, $12
	smpsCall	BGM_LimitBoss_Call01
	dc.b	nFs5, $0C, $03, nRst, nFs6, nRst, nFs6, $0C, $03, nRst
	dc.b	nFs6, nRst, nFs6, $0C, $03, nRst, nFs6, $30
	smpsJump	BGM_LimitBoss_Jump01

BGM_LimitBoss_Call01:
	dc.b	nRst, $1E, nFs5, $03, nRst, nFs5, nRst, nFs6, nRst, nFs6, $30, nRst
	dc.b	$12, nFs5, $03, nRst, nFs5, nRst
	smpsReturn

; FM1 Data
BGM_LimitBoss_FM1:
	smpsAlterNote	$03
	smpsJump	BGM_LimitBoss_Jump00

; FM4 Data
BGM_LimitBoss_FM4:
	smpsPan		panRight, $00

BGM_LimitBoss_Jump00:
	smpsSetvoice	$02

; PSG1 Data
BGM_LimitBoss_PSG1:
	dc.b	nRst, $30
	smpsCall	BGM_LimitBoss_Call00
	dc.b	$30
	smpsCall	BGM_LimitBoss_Call00
	dc.b	$18, $18, $30
	smpsJump	BGM_LimitBoss_PSG1

BGM_LimitBoss_Call00:
	dc.b	nB6, $04, $04, $04, $24, nRst, $0C, nB6, nB6, nB6, nB6
	dc.b	$30
	smpsReturn

; DAC Data
BGM_LimitBoss_DAC:
	dc.b	dSnare, $06, $06, $06, $06, $06, $06, $06, $06

BGM_LimitBoss_Loop00:
	dc.b	dSnare, $0C, $04, $04, $04, $06, $0C, $06, $12, $06, $0C, $0C
	smpsLoop	$00, $03, BGM_LimitBoss_Loop00
	dc.b	$0C, $04, $04, $04, $06, $0C, $06, $06, $0C, $06, $06, $0C, $06
	dc.b	$06, $06, $06, $06, $06, $06, $06, $06
	smpsJump	BGM_LimitBoss_DAC

BGM_LimitBoss_Voices:
;	Voice $00
;	$08
;	$0A, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$24, $2D, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $2D, $24

;	Voice $01
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $02
;	$3D
;	$01, $02, $02, $02, 	$14, $0E, $8C, $0E, 	$08, $05, $02, $05
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$1A, $92, $A7, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $00, $02, $00, $00
	smpsVcAttackRate    $0E, $0C, $0E, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $02, $05, $08
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $12, $1A

;	Voice $03
;	$3A
;	$42, $43, $14, $71, 	$1F, $12, $1F, $1F, 	$04, $02, $04, $0A
;	$01, $01, $02, $0B, 	$1F, $1F, $1F, $1F, 	$1A, $16, $19, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $01, $04, $04
	smpsVcCoarseFreq    $01, $04, $03, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $04, $02, $04
	smpsVcDecayRate2    $0B, $02, $01, $01
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $19, $16, $1A

