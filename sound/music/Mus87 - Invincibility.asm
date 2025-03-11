Mus87_Invincibility_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Mus87_Invincibility_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $08

	smpsHeaderDAC       Mus87_Invincibility_DAC
	smpsHeaderFM        Mus87_Invincibility_FM1,	$F4, $11
	smpsHeaderFM        Mus87_Invincibility_FM2,	$F4, $07
	smpsHeaderFM        Mus87_Invincibility_FM3,	$E8, $0F
	smpsHeaderFM        Mus87_Invincibility_FM4,	$E8, $0F
	smpsHeaderFM        Mus87_Invincibility_FM5,	$F4, $11
	smpsHeaderPSG       Mus87_Invincibility_PSG1,	$D0, $05, $00, fTone_05
	smpsHeaderPSG       Mus87_Invincibility_PSG2,	$DC, $05, $00, fTone_05
	smpsHeaderPSG       Mus87_Invincibility_PSG3,	$00, $03, $00, fTone_04

; FM5 Data
Mus87_Invincibility_FM5:
	smpsAlterNote       $03

; FM1 Data
Mus87_Invincibility_FM1:
	smpsSetvoice        $00
	dc.b	nRst, $30

Mus87_Invincibility_Jump00:
	dc.b	nRst, $0C, nCs6, $15, nRst, $03, nCs6, $06, nRst, nCs6, $0F, nRst
	dc.b	$03, nCs5, $18, nRst, $06, nCs6, $06, nRst, nCs6, nRst, nCs6, nRst
	dc.b	nCs5, nRst, nCs5, $0F, nRst, $03, nCs5, $18, nRst, $06, nRst, $0C
	dc.b	nCs6, $15, nRst, $03, nCs6, $06, nRst, nCs6, $0F, nRst, $03, nCs5
	dc.b	$18, nRst, $06, nCs6, $06, nRst, nCs6, nRst, nCs6, nRst, nCs5, nRst
	dc.b	nCs5, $0F, nRst, $03, nCs5, $18, nRst, $06
	smpsAlterVol        $FD
	dc.b	nRst, $30, nRst, nCs5, $04, nCs5, nCs6, nCs6, nCs6, nCs6, nCs5, nCs6
	dc.b	nCs6, nCs6, nCs6, nCs6, nCs6, nCs6, nCs6, nCs6, nCs6, nCs6, nCs6, nCs6
	dc.b	nCs6, nCs6, nCs7, nCs7
	smpsAlterVol        $03
	smpsJump            Mus87_Invincibility_Jump00

; FM2 Data
Mus87_Invincibility_FM2:
	smpsNop             $01
	smpsSetvoice        $01
	dc.b	nRst, $30

Mus87_Invincibility_Loop05:
	dc.b	nA3, $06, nRst, nA3, nRst, nA3, nRst, nA3, nRst, nA3, $12, nA3
	dc.b	$0C, nA3, $06, nA3, $0C, nA3, $06, nRst, nA3, nRst, nA3, nRst
	dc.b	nA3, nRst, nA4, $12, nA4, $0C, nA4, $06, nA4, $0C
	smpsLoop            $00, $02, Mus87_Invincibility_Loop05

Mus87_Invincibility_Loop06:
	dc.b	nA2, $06, nA2, $12, nA2, $06, nRst, nA2, nRst
	smpsLoop            $00, $02, Mus87_Invincibility_Loop06
	dc.b	nA2, $0C, nA2, nA3, nA3, nA2, $06, nA3, nA3, nA3, nA3, nA3
	dc.b	nA3, nA3
	smpsNop             $01
	smpsJump            Mus87_Invincibility_Loop05

; FM3 Data
Mus87_Invincibility_FM3:
	smpsSetvoice        $00
	dc.b	nRst, $30

Mus87_Invincibility_Loop03:
	dc.b	nE6, $06, nRst, nE6, nRst, nE6, nRst, nE6, nRst, nE6, $12, nE6
	dc.b	$1E, nE6, $06, nRst, nE6, nRst, nE6, nRst, nE6, nRst, nE6, $12
	dc.b	nE6, $1E
	smpsLoop            $00, $02, Mus87_Invincibility_Loop03

Mus87_Invincibility_Loop04:
	dc.b	nRst, $06, nE5, $12, nE5, $06, nRst, $12
	smpsLoop            $00, $04, Mus87_Invincibility_Loop04
	smpsJump            Mus87_Invincibility_Loop03

; FM4 Data
Mus87_Invincibility_FM4:
	smpsSetvoice        $00
	dc.b	nRst, $30

Mus87_Invincibility_Loop01:
	dc.b	nCs6, $06, nRst, nCs6, nRst, nCs5, nRst, nCs5, nRst, nCs5, $12, nCs5
	dc.b	$1E, nCs6, $06, nRst, nCs6, nRst, nCs5, nRst, nCs5, nRst, nCs6, $12
	dc.b	nCs6, $1E
	smpsLoop            $00, $02, Mus87_Invincibility_Loop01

Mus87_Invincibility_Loop02:
	dc.b	nRst, $06, nCs5, $12, nCs6, $06, nRst, $12
	smpsLoop            $00, $04, Mus87_Invincibility_Loop02
	smpsJump            Mus87_Invincibility_Loop01

; PSG1 Data
Mus87_Invincibility_PSG1:
; PSG2 Data
Mus87_Invincibility_PSG2:
	smpsStop

; PSG3 Data
Mus87_Invincibility_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $30

Mus87_Invincibility_Jump01:
	smpsNoteFill        $03
	dc.b	nMaxPSG, $0C
	smpsNoteFill        $0C
	dc.b	$0C
	smpsNoteFill        $03
	dc.b	$0C
	smpsNoteFill        $0C
	dc.b	$0C
	smpsJump            Mus87_Invincibility_Jump01

; DAC Data
Mus87_Invincibility_DAC:
	dc.b	dSnare, $06, dSnare, dSnare, dSnare, dSnare, $02, dSnare, $04, dSnare, $12

Mus87_Invincibility_Loop00:
	dc.b	dSnare, $0C, dSnare, dSnare, dSnare, dSnare, $0C, dSnare, dSnare, dSnare, dSnare, $0C
	dc.b	dSnare, dSnare, dSnare, dSnare, $0C, dSnare, dSnare, $04, nRst, dSnare, dSnare, $0C
	smpsLoop            $00, $02, Mus87_Invincibility_Loop00
	dc.b	dSnare, $06, dSnare, $12, dSnare, $0C, dSnare, dSnare, $06, dSnare, $12, dSnare
	dc.b	$0C, dSnare, dSnare, $06, dSnare, $12, dSnare, $0C, dSnare, dSnare, $04, dSnare
	dc.b	dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare
	smpsJump            Mus87_Invincibility_Loop00

; Unreachable
	smpsStop

Mus87_Invincibility_Voices:
;	Voice $00
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

;	Voice $01
;	$3A
;	$61, $3C, $14, $31, 	$9C, $DB, $9C, $DA, 	$04, $09, $04, $03
;	$03, $01, $03, $00, 	$1F, $0F, $0F, $AF, 	$21, $47, $31, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $03, $06
	smpsVcCoarseFreq    $01, $04, $0C, $01
	smpsVcRateScale     $03, $02, $03, $02
	smpsVcAttackRate    $1A, $1C, $1B, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $04, $09, $04
	smpsVcDecayRate2    $00, $03, $01, $03
	smpsVcDecayLevel    $0A, $00, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $31, $47, $21

