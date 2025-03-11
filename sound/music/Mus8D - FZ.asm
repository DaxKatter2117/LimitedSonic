Mus8D_FZ_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Mus8D_FZ_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $06

	smpsHeaderDAC       Mus8D_FZ_DAC
	smpsHeaderFM        Mus8D_FZ_FM1,	$00, $12
	smpsHeaderFM        Mus8D_FZ_FM2,	$F4, $0D
	smpsHeaderFM        Mus8D_FZ_FM3,	$F4, $0A
	smpsHeaderFM        Mus8D_FZ_FM4,	$F4, $0F
	smpsHeaderFM        Mus8D_FZ_FM5,	$00, $12
	smpsHeaderPSG       Mus8D_FZ_PSG1,	$D0, $03, $00, fTone_05
	smpsHeaderPSG       Mus8D_FZ_PSG2,	$DC, $06, $00, fTone_05
	smpsHeaderPSG       Mus8D_FZ_PSG3,	$DC, $00, $00, fTone_04

; FM5 Data
Mus8D_FZ_FM5:
	smpsAlterNote       $03
	smpsJump            Mus8D_FZ_Jump03

; FM1 Data
Mus8D_FZ_FM1:
	smpsModSet          $1A, $01, $06, $04

Mus8D_FZ_Jump03:
	smpsSetvoice        $00
	dc.b	nB6, $03, nRst, nB6, nRst, nB6, nRst, nB6, nB6, nRst, $18

Mus8D_FZ_Jump02:
	dc.b	nRst, $0C, nB5, nB5, nB6, nB6, nB6, nB5, nB6, nB6, $60, nRst
	dc.b	$0C, nB5, nB5, nB6, nB6, nB6, nB5, nB6, nB6, $30, nB6, $18
	dc.b	nB6, nB5, $0C, nB5, nB5, nB5, nB5, nB5, nB5, nB5
	smpsJump            Mus8D_FZ_Jump02

; FM2 Data
Mus8D_FZ_FM2:
	smpsSetvoice        $01
	smpsNop             $01
	dc.b	nE4, $03, nRst, nE3, nRst, nE3, nRst, nE4, nE4, nRst, $12, nE4
	dc.b	$03, nE3

Mus8D_FZ_Jump01:
	smpsCall            Mus8D_FZ_Call01
	dc.b	nE4, $03, nE3
	smpsCall            Mus8D_FZ_Call01
	dc.b	nE3, $06, nE3, $0C, nE3, $09, nE3, $03, nE3, $06, nE3, $0C
	dc.b	nE3, $06, nE3, nE3, $0C, nE3, $06, nE3, nE3, $0C, nE4, $03
	dc.b	nE3
	smpsNop             $01
	smpsJump            Mus8D_FZ_Jump01

Mus8D_FZ_Call01:
	dc.b	nE3, $0C, nE3, $09, nE3, $03, nE3, $06, nE3, $0C, nE3, $06
	dc.b	nE3, $03, nE3, nE3, $0C, nE3, $06, nE3, $0C, nE3, nE3, nE3
	dc.b	$09, nE3, $03, nE3, $06, nE3, $0C, nE3, $06, nE3, nE3, $0C
	dc.b	nE3, $06, nE3, nE3, $0C
	smpsReturn

; FM3 Data
Mus8D_FZ_FM3:
	smpsSetvoice        $02
	dc.b	nE7, $03, nRst, nE6, nRst, nE6, nRst, nE7, nE7, $03, nRst, $18

Mus8D_FZ_Jump00:
	smpsCall            Mus8D_FZ_Call00
	dc.b	nE7, $06, nRst, nE7, $03, nRst, nE6, nRst, nE6, $12
	smpsCall            Mus8D_FZ_Call00
	dc.b	nE7, $06, nRst, nE7, $03, nRst, nE6, nRst, nE6, $12, nE5, $18
	dc.b	nE5, $0C, nE6, nE5, $18, nE6, $0C, nE6
	smpsJump            Mus8D_FZ_Jump00

Mus8D_FZ_Call00:
	dc.b	nRst, $1E, nE4, $03, nRst, nE5, nRst, nE5, nRst, nE5, $03, nE5
	dc.b	nE5, $30, nE7, $06, nRst, nE6, $03, nRst, nE6, nRst, nE6, $18
	smpsReturn

; FM4 Data
Mus8D_FZ_FM4:
	smpsSetvoice        $02
	smpsAlterVol        $FC
	smpsAlterNote       $03
	dc.b	nE7, $03, nRst, nE6, nRst, nE6, nRst, nE7, nE7, $03, nRst, $18
	smpsAlterVol        $04
	smpsSetvoice        $02

Mus8D_FZ_Loop01:
	dc.b	nE4, $06, nE4, nE4, nE4, nE5, nE4, nE4, nE4, nE4, nE4, nE4
	dc.b	nE4, nE5, nE4, nE4, nE4, nE4, nE4, nE4, nE4, nE5, nE4, nE4
	dc.b	nE4, nE4, nE4, nE5, nE4, nE5, nE4, nE4, nE4
	smpsLoop            $00, $02, Mus8D_FZ_Loop01

Mus8D_FZ_Loop02:
	dc.b	nE7, $03, nE6, nE6, nE6
	smpsLoop            $00, $04, Mus8D_FZ_Loop02

Mus8D_FZ_Loop03:
	dc.b	nE7, nE7, nE7, nE6
	smpsLoop            $00, $04, Mus8D_FZ_Loop03
	smpsJump            Mus8D_FZ_Loop01

; PSG1 Data
Mus8D_FZ_PSG1:
; PSG2 Data
Mus8D_FZ_PSG2:
; PSG3 Data
Mus8D_FZ_PSG3:
	smpsStop

; DAC Data
Mus8D_FZ_DAC:
	dc.b	dSnare, $06, dSnare, dSnare, dSnare, $03, dSnare, $09, dSnare, $03, dSnare, $03
	dc.b	dSnare, $03, dSnare, $03, dSnare, dSnare

Mus8D_FZ_Loop00:
	dc.b	dSnare, $0C, $09, $03, $06, $06, dSnare, dSnare, dSnare, dSnare, $0C, $06
	dc.b	$0C, $0C, $0C, $09, $03, $06, $06, dSnare, $03, dSnare, dSnare, $06
	dc.b	dSnare, $06, $0C, $06, $06, $0C, $06
	smpsLoop            $00, $02, Mus8D_FZ_Loop00
	dc.b	$0C, $09, $03, $06, $0C, $06, dSnare, $06, dSnare, dSnare, dSnare, dSnare
	dc.b	dSnare, dSnare, dSnare
	smpsJump            Mus8D_FZ_Loop00

Mus8D_FZ_Voices:
;	Voice $00
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

;	Voice $01
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$2F, $1F, $1F, $FF, 	$19, $37, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $37, $19

;	Voice $02
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

;	Voice $03
;	$3A
;	$42, $43, $14, $71, 	$1F, $12, $1F, $1F, 	$04, $02, $04, $0A
;	$01, $01, $02, $02, 	$1F, $1F, $1F, $1F, 	$1A, $16, $19, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $01, $04, $04
	smpsVcCoarseFreq    $01, $04, $03, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $04, $02, $04
	smpsVcDecayRate2    $02, $02, $01, $01
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $19, $16, $1A

