Mus82_LZ_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Mus82_LZ_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $06

	smpsHeaderDAC       Mus82_LZ_DAC
	smpsHeaderFM        Mus82_LZ_FM1,	$F4, $0C
	smpsHeaderFM        Mus82_LZ_FM2,	$E8, $0D
	smpsHeaderFM        Mus82_LZ_FM3,	$F4, $18
	smpsHeaderFM        Mus82_LZ_FM4,	$F4, $18
	smpsHeaderFM        Mus82_LZ_FM5,	$00, $12
	smpsHeaderPSG       Mus82_LZ_PSG1,	$D0, $02, $00, fTone_09
	smpsHeaderPSG       Mus82_LZ_PSG2,	$D0, $02, $00, fTone_09
	smpsHeaderPSG       Mus82_LZ_PSG3,	$00, $02, $00, fTone_04

; FM1 Data
Mus82_LZ_FM1:
	smpsSetvoice        $00
	dc.b	nRst, $30

Mus82_LZ_Loop04:
	dc.b	nRst, $06, nE5, nE5, nE5, nE5, $09, nE5, nE5, $0C, nE6, $06
	dc.b	nE5, nE5, nE5, $09, nE5, $06, nE5, $03, nE5, $06
	smpsLoop            $00, $02, Mus82_LZ_Loop04
	smpsCall            Mus82_LZ_Call04
	dc.b	nE6, $09, nE6, $06, nE6, $03, nE5, $06
	smpsCall            Mus82_LZ_Call04
	dc.b	nE6, $0C, nE5, nE6, $04, nE6, nE6, nE6, $24, nRst, $30
	smpsCall            Mus82_LZ_Call05
	dc.b	nE6, $0C, nE6, $06, nE6, nE6, $09, nE6, nE6, $36
	smpsCall            Mus82_LZ_Call05
	dc.b	nE6, $06, nE6, nE6, nE6, nE5, nE5, nE5, nE5, nE5, nE6, $12
	dc.b	nRst, $18
	smpsJump            Mus82_LZ_Loop04

Mus82_LZ_Call04:
	dc.b	nRst, nE5, nE6, nE5, nE6, $09, nE6, nE6, $0C, nE6, $06, nE6
	dc.b	nE6
	smpsReturn

Mus82_LZ_Call05:
	dc.b	nE6, $0C, nE6, $06, nE6, nE6, $09, nE6, nE6, $0C, nE6, $06
	dc.b	nE6, nE6, nE6, $09, nE6, $0F
	smpsReturn

; FM2 Data
Mus82_LZ_FM2:
	smpsSetvoice        $01
	smpsNop             $01
	dc.b	nRst, $12, nD4, $0C, nD4, $03, nRst, nD4, nRst, $09

Mus82_LZ_Loop02:
	dc.b	nD4, $0F, nRst, $03, nD4, nRst, nD4, $09, nRst, $03, nD4, $09
	dc.b	nRst, $03, nD4, $0F, nRst, $03, nD4, nRst, nD4, $09, nRst, $03
	dc.b	nD4, $09, nRst, $03
	smpsLoop            $00, $02, Mus82_LZ_Loop02

Mus82_LZ_Loop03:
	dc.b	nD4, $0F, nRst, $03, nD4, nRst, nD5, $09, nRst, $03, nD5, $09
	dc.b	nRst, $03, nD5, $0F, nRst, $03, nD5, nRst, nD5, $09, nRst, $03
	dc.b	nD4, $09, nRst, $03
	smpsLoop            $00, $02, Mus82_LZ_Loop03
	dc.b	nD4, $0F, nRst, $03, nD4, nRst, nD4, $09, nRst, $03, nD4, $09
	dc.b	nRst, $03, nD5, nRst, nD5, $06, nD4, nD5, nD4, $18
	smpsCall            Mus82_LZ_Call03
	dc.b	nD4, nRst, nRst, nD4, nD4, nRst, nRst, nD4, nD4, $18
	smpsCall            Mus82_LZ_Call03
	dc.b	nD4, nRst, nRst, nD4, nD5, nRst, nRst, nD5, nD4, $0C, nD4
	smpsNop             $01
	smpsJump            Mus82_LZ_Loop02

Mus82_LZ_Call03:
	dc.b	nD4, $06, nRst, nRst, nD4, nD4, nRst, nRst, nD4, nD4, nRst, nRst
	dc.b	nD4, nD4, nD4, nD4, $0C, nD4, $06, nRst, nRst, nD4
	smpsReturn

; FM3 Data
Mus82_LZ_FM3:
	smpsPan             panLeft, $00
	smpsCall            Mus82_LZ_Call02
	smpsModSet          $01, $01, $01, $04

Mus82_LZ_Jump01:
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nA6, $48, nA6, $0C, nA6, nA6
	dc.b	$30, nRst, nA6, $48, nA6, $0C, nA6, nA6, $18, nA6, nA6, nA6
	smpsJump            Mus82_LZ_Jump01

Mus82_LZ_Call02:
	smpsSetvoice        $03
	smpsNoteFill        $08
	dc.b	nA6, $06, nA6, nA6
	smpsNoteFill        $00
	dc.b	nA6, $0A, nRst, $02, nA6, $03, nRst, nA6, nRst, $09
	smpsReturn

; FM4 Data
Mus82_LZ_FM4:
	smpsPan             panRight, $00
	smpsAlterNote       $02
	smpsCall            Mus82_LZ_Call02
	smpsModSet          $02, $01, $02, $04
	smpsJump            Mus82_LZ_Jump01

; FM5 Data
Mus82_LZ_FM5:
	smpsSetvoice        $02
	smpsNoteFill        $08
	dc.b	nC5, $06, nC4, nC4
	smpsNoteFill        $00
	dc.b	nC5, $09, nRst, $03, nC5, nRst, nC5, nRst, $09
	smpsAlterVol        $03

Mus82_LZ_Jump00:
	smpsSetvoice        $02
	dc.b	nRst, $4E, nC4, $03, nC4, nC5, nRst, nC4, nRst, $51, nC5, $03
	dc.b	nC5, nC4, nRst, nC5, nRst, $51, nC5, $03, nC5, nC5, nRst, nC5
	dc.b	nRst, $51, nC5, $03, nC5, nC5, nRst, nC5, nRst, $39, nC4, $06
	dc.b	nRst, nC4, nRst, nC4, $03, nRst, nC4, nRst, nC5, nRst
	smpsNoteFill        $0A
	smpsCall            Mus82_LZ_Call01
	dc.b	nRst, $06, nC4, nRst, nC4, nRst, nC5, nC5, nC5
	smpsCall            Mus82_LZ_Call01
	smpsNoteFill        $05
	dc.b	nRst, $06, nC4, $03, nC4

Mus82_LZ_Loop01:
	dc.b	nC5, nC5, nC4, nC4
	smpsLoop            $00, $03, Mus82_LZ_Loop01
	smpsNoteFill        $00
	smpsJump            Mus82_LZ_Jump00

Mus82_LZ_Call01:
	dc.b	nC5, $12, $06, nC5, $12, $06, nC5, $12, $06, nC4, nC5
	smpsNoteFill        $14
	dc.b	nC5, $0C
	smpsNoteFill        $0A
	dc.b	nC5, $12, $06, nC5, $12, $06
	smpsReturn

; PSG1 Data
Mus82_LZ_PSG1:
	dc.b	nA6, $03, nA6, nA6, nA6, nA6, nA6, $21

Mus82_LZ_Loop06:
	smpsCall            Mus82_LZ_Call09
;	smpsAlterPitch      $05
	smpsLoop            $00, $02, Mus82_LZ_Loop06
;	smpsAlterPitch      $F6
	dc.b	nRst, $06, nA6, $0C, $0C, $0C, $06, nRst, $06, nA6, $03, $09
	dc.b	$0C, nA6, nA6, $06
	smpsCall            Mus82_LZ_Call0B
	dc.b	nA6, $03, $09, $06, nRst, $06, nA6, $0C, $0C, $03, $09, $06
	smpsCall            Mus82_LZ_Call0B
	dc.b	nA6, $03, $09, $06, nRst, $06, nA6, $0C, $06, nA6, nA6, nA6
	dc.b	$0C
	smpsJump            Mus82_LZ_Loop06

Mus82_LZ_Call09:
	dc.b	nRst, $06, nA6, $0C, $0C, $0C, $06, nRst, nA6, $0C, $0C, $03
	dc.b	$09, $06, nRst, nA6, $0C, $0C, $0C, $06, nRst, nA6, $0C, $0C
	dc.b	$03, $09, $06
	smpsReturn

Mus82_LZ_Call0B:
	dc.b	nRst, $06, nA6, $0C, nA6, nA6, $03, $09, $06, nRst, nA6, $0C
	dc.b	$0C, nA6, $03, $09, $06, nRst, nA6, $0C, $0C
	smpsReturn

; PSG2 Data
Mus82_LZ_PSG2:
	dc.b	nC7, $03, nC7, nC6, nC6, nC6, nC6, $21

Mus82_LZ_Jump03:
	smpsAlterPitch      $03

Mus82_LZ_Loop05:
	smpsCall            Mus82_LZ_Call09
;	smpsAlterPitch      $05
	smpsLoop            $00, $02, Mus82_LZ_Loop05
	smpsAlterPitch      $FD
	dc.b	nRst, $06, nC6, $0C, $0C, $0C, $06, nRst, $06, nC6, $03, $09
	dc.b	$0C, nC7, $0C, $06
	smpsCall            Mus82_LZ_Call0A
	dc.b	nC6, $03, $09, $06, nRst, $06, nC7, $0C, $0C, nC7, $03, $09
	dc.b	$06
	smpsCall            Mus82_LZ_Call0A
	dc.b	nC7, $03, $09, $06, nRst, $06, nC6, $0C, $06, nC6, $06, nC6
	dc.b	nC7, $0C
	smpsJump            Mus82_LZ_Jump03

Mus82_LZ_Call0A:
	dc.b	nRst, $06, nC7, $0C, $0C, nC6, $03, $09, $06, nRst, nC6, $0C
	dc.b	$0C, nC6, $03, $09, $06, nRst, nC7, $0C, $0C
	smpsReturn

; PSG3 Data
Mus82_LZ_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $12
	smpsNoteFill        $0E
	dc.b	nMaxPSG, $0C
	smpsNoteFill        $03
	dc.b	$06, $0C

Mus82_LZ_Jump02:
	smpsCall            Mus82_LZ_Call06
	smpsCall            Mus82_LZ_Call07
	smpsCall            Mus82_LZ_Call06
	smpsNoteFill        $0E
	dc.b	$0C
	smpsNoteFill        $03
	dc.b	$06, $06, $03, $03, $06, $03, $03, $06
	smpsCall            Mus82_LZ_Call06
	smpsCall            Mus82_LZ_Call07
	smpsCall            Mus82_LZ_Call06
	smpsCall            Mus82_LZ_Call06
	smpsCall            Mus82_LZ_Call06
	smpsCall            Mus82_LZ_Call06
	smpsCall            Mus82_LZ_Call08
	dc.b	$03, $03
	smpsNoteFill        $0E
	dc.b	$06
	smpsNoteFill        $03
	dc.b	$03, $03
	smpsNoteFill        $0E
	dc.b	$06
	smpsCall            Mus82_LZ_Call08
	smpsPSGAlterVol     $FF
	smpsNoteFill        $0E
	dc.b	$0C, $0C
	smpsPSGAlterVol     $01
	smpsJump            Mus82_LZ_Jump02

Mus82_LZ_Call06:
	smpsNoteFill        $0E
	dc.b	$0C
	smpsNoteFill        $03
	dc.b	$06, $06, $06, $06, $06, $06
	smpsReturn

Mus82_LZ_Call07:
	smpsNoteFill        $0E
	dc.b	$0C
	smpsNoteFill        $03
	dc.b	$06, $06, $06, $06, $06, $03, $03
	smpsReturn

Mus82_LZ_Call08:
	dc.b	nRst, $03
	smpsNoteFill        $03
	dc.b	nMaxPSG, $06, $06, $03
	smpsNoteFill        $0E
	dc.b	$06
	smpsNoteFill        $03
	dc.b	$06, $06, $06, $06, $06, $06, $06, $06
	smpsNoteFill        $03
	dc.b	$06, $06, $06
	smpsNoteFill        $0E
	dc.b	$06
	smpsNoteFill        $03
	dc.b	$06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06
	smpsReturn

; DAC Data
Mus82_LZ_DAC:
	dc.b	dSnare, $06, dSnare, dSnare, dSnare, $0C, dSnare, $06, $0C

Mus82_LZ_Loop00:
	dc.b	dSnare, $12, dSnare, $06, dSnare, $0C, dSnare
	smpsLoop            $00, $09, Mus82_LZ_Loop00
	dc.b	dSnare, $12, dSnare, $06, dSnare, dSnare, dSnare, dSnare
	smpsCall            Mus82_LZ_Call00
	dc.b	dSnare, $0C, dSnare, $06, dSnare, dSnare, $06, dSnare, dSnare, $0C
	smpsCall            Mus82_LZ_Call00
	dc.b	dSnare, $0C, dSnare, $06, dSnare, dSnare, dSnare, dSnare, dSnare
	smpsJump            Mus82_LZ_Loop00

Mus82_LZ_Call00:
	dc.b	dSnare, $0C, dSnare, $06, dSnare, dSnare, $0C, dSnare, dSnare, $0C, dSnare, $06
	dc.b	dSnare, dSnare, $0C, dSnare, dSnare, $0C, dSnare, $06, dSnare, dSnare, $0C, dSnare
	smpsReturn

Mus82_LZ_Voices:
;	Voice $00
;	$31
;	$34, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$0C, $07, $0C, $09
;	$07, $07, $07, $08, 	$2F, $1F, $1F, $2F, 	$17, $32, $14, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $04
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0C, $07, $0C
	smpsVcDecayRate2    $08, $07, $07, $07
	smpsVcDecayLevel    $02, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $14, $32, $17

;	Voice $01
;	$18
;	$37, $30, $30, $31, 	$9E, $DC, $1C, $9C, 	$0D, $06, $04, $01
;	$08, $0A, $03, $05, 	$BF, $BF, $3F, $2F, 	$2C, $22, $14, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $00, $07
	smpsVcRateScale     $02, $00, $03, $02
	smpsVcAttackRate    $1C, $1C, $1C, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $06, $0D
	smpsVcDecayRate2    $05, $03, $0A, $08
	smpsVcDecayLevel    $02, $03, $0B, $0B
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $14, $22, $2C

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

;	Voice $04
;	$3C
;	$31, $52, $50, $30, 	$52, $53, $52, $53, 	$08, $00, $08, $00
;	$04, $00, $04, $00, 	$1F, $0F, $1F, $0F, 	$1A, $80, $16, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $05, $03
	smpsVcCoarseFreq    $00, $00, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $13, $12, $13, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $08, $00, $08
	smpsVcDecayRate2    $00, $04, $00, $04
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $16, $00, $1A

