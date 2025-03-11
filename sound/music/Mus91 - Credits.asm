Mus91_Credits_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Mus91_Credits_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $33

	smpsHeaderDAC       Mus91_Credits_DAC
	smpsHeaderFM        Mus91_Credits_FM1,	$F4, $12
	smpsHeaderFM        Mus91_Credits_FM2,	$00, $0B
	smpsHeaderFM        Mus91_Credits_FM3,	$F4, $14
	smpsHeaderFM        Mus91_Credits_FM4,	$F4, $08
	smpsHeaderFM        Mus91_Credits_FM5,	$F4, $20
	smpsHeaderPSG       Mus91_Credits_PSG1,	$D0, $01, $00, $00
	smpsHeaderPSG       Mus91_Credits_PSG2,	$D0, $03, $00, $00
	smpsHeaderPSG       Mus91_Credits_PSG3,	$00, $03, $00, fTone_04

; FM1 Data
Mus91_Credits_FM1:
	smpsNop             $01
	dc.b	nRst, $60
	smpsSetvoice        $1C
	smpsAlterVol        $F8
	smpsNoteFill        $06
	smpsCall            Mus91_Credits_Call11
	smpsPan             panCenter, $00
	smpsNoteFill        $00
	smpsSetvoice        $1C
	smpsModSet          $0D, $01, $07, $04
	dc.b	nRst, $30
	smpsCall            Mus91_Credits_Call12
	dc.b	nB6, nB6, $18, nB6, $0C, nB5, $18, nB6, $0C, nB5, $18, nB5
	dc.b	$54
	smpsCall            Mus91_Credits_Call12
	dc.b	$0C, nB5, $18, nB5, $0C, nB5, $18, nB5, $0C, nB5, $18, nB5
	dc.b	$24, nRst, $60, nRst, nRst, nRst
	smpsModOff
	smpsNop             $01
	smpsSetTempoMod     $0F
	smpsSetvoice        $1C
	smpsAlterVol        $02
	dc.b	nRst, $06, nB5, nB5, nB5, nB5, $09, nB5, nB5, $0C, nB6, $06
	dc.b	nB5, nB5, nB5, $09, nB5, $06, nB5, $03, nB5, $06, nRst, $06
	dc.b	nB5, nB6, nB5, nB6, $09, nB6, nB6, $0C, nB6, $06, nB6, nB6
	dc.b	nB6, $0C, nB5, $0C, nB6, $04, nB6, nB6, nB6, $24
	smpsAlterPitch      $F4
	smpsAlterVol        $09
	smpsSetvoice        $1C
	dc.b	nRst, $18, nB5, $06, nB5, nB6, nB6
	smpsCall            Mus91_Credits_Call0C
	smpsSetvoice        $1C
	smpsAlterVol        $EB
	dc.b	nRst, $0C, nB5, nB5, nB6
	smpsCall            Mus91_Credits_Call0D
	dc.b	nB6, $1E, nB6, $06, nB6, $18, nRst, $24
	smpsNop             $01
	smpsSetTempoMod     $0A
	smpsSetvoice        $1C
	smpsAlterPitch      $0C
	smpsAlterVol        $0B
	smpsCall            Mus91_Credits_Call0E
	smpsNop             $01
	smpsSetTempoMod     $07
	dc.b	nRst, $60
	smpsNop             $01
	smpsSetTempoMod     $03
	dc.b	nRst, $30
	smpsSetvoice        $1C
	smpsAlterVol        $0E
	dc.b	nRst, $04, nB6, $08, nB6, $03, nRst, nB6, nRst, nB6, nRst, nB6
	dc.b	nRst, nB6, $04, nB5, nRst, $02, nB5, nRst, $04, nB5, $08, nB6
	dc.b	$03, nRst, nB5, nRst, nB5, $04, nB5, nRst, $02, nB6, $0E, nRst
	dc.b	$06, nB6, $02, nRst, $04, nB6, $0C, nB6, nB6, $0A, nB6, $02
	smpsNop             $01
	smpsSetTempoMod     $04
	smpsAlterVol        $F5
	smpsSetvoice        $1C
	dc.b	nRst, $60
	smpsCall            Mus91_Credits_Call07
	smpsAlterVol        $09
	smpsAlterNote       $03
	smpsSetvoice        $1C
	smpsModSet          $00, $01, $06, $04
	smpsCall            Mus91_Credits_Call0B
	smpsAlterVol        $EF
	smpsSetvoice        $1C
	smpsAlterNote       $02
	dc.b	nB1, $6C, smpsNoAttack, $60
	smpsNop             $01
	smpsStop

Mus91_Credits_Call12:
	dc.b	nB6, $0C, nB5, $18, nB6, $0C, nB5, $18, nB6, $0C, nB5, $18
	dc.b	nB5, $48, nB5, $0C
	smpsReturn

Mus91_Credits_Call07:
	dc.b	nRst, $0C, nB6, $15, nRst, $03, nB6, $06, nRst, nB6, $0F, nRst
	dc.b	$03, nB5, $18, nRst, $06, nB6, $06, nRst, nB6, nRst, nB6, nRst
	dc.b	nB5, nRst, nB5, $0F, nRst, $03, nB5, $18, nRst, $06
	smpsLoop            $00, $02, Mus91_Credits_Call07
	smpsReturn

; FM2 Data
Mus91_Credits_FM2:
	dc.b	nRst, $60
	smpsSetvoice        $1D

Mus91_Credits_Loop0F:
	dc.b	nD3, $0C, nD3, nD3, nD3, nD3, nD3, nD3, nD3, nD3, nD3, nD3
	dc.b	nD3, nD3, nD3, nD3, nD3, nD3, nD3, nD3, nD3, nD3, nD3, nD3
	dc.b	nD3, nD2, nD2, nD2, nD2, nD3, nD3, nD3, nD3
	smpsLoop            $00, $02, Mus91_Credits_Loop0F
	smpsSetvoice        $1D

Mus91_Credits_Loop10:
	smpsNoteFill        $05
	dc.b	nD3, $0C
	smpsCall            Mus91_Credits_Call0F
	smpsNoteFill        $05
	dc.b	nD3, $0C, $0C, $0C, $0C, $0C
	smpsNoteFill        $00
	dc.b	nD3, nD3, nD3
	smpsLoop            $00, $02, Mus91_Credits_Loop10
	smpsNoteFill        $05
	dc.b	nD3
	smpsCall            Mus91_Credits_Call0F
	smpsNoteFill        $05
	dc.b	nD3
	smpsCall            Mus91_Credits_Call0F
	smpsNoteFill        $05
	dc.b	nD3
	smpsCall            Mus91_Credits_Call0F
	smpsNoteFill        $05
	dc.b	nD3, $0C, $0C, $0C, $0C, $0C
	smpsNoteFill        $00
	dc.b	nD2, nD2, nD2
	smpsNoteFill        $05

Mus91_Credits_Loop11:
	dc.b	nD3
	smpsLoop            $00, $18, Mus91_Credits_Loop11
	smpsNoteFill        $00
	dc.b	nD3, $06, nRst, nD3, $0C, nD2, $06, nRst, nD2, $0C, nD2, $06
	dc.b	nRst, nD2, $0C, nD2, $06, nRst, nD2, $0C
	smpsSetvoice        $1D
	smpsAlterPitch      $E8
	smpsAlterVol        $02

Mus91_Credits_Loop12:
	dc.b	nD4, $0F, nRst, $03, nD4, nRst, nD4, $09, nRst, $03, nD4, $09
	dc.b	nRst, $03, nD4, $0F, nRst, $03, nD4, nRst, nD4, $09, nRst, $03
	dc.b	nD4, $09, nRst, $03
;	smpsAlterPitch      $05
	smpsLoop            $00, $02, Mus91_Credits_Loop12
;	smpsAlterPitch      $F6
	dc.b	nD4, $0F, nRst, $03, nD4, nRst, nD4, $09, nRst, $03, nD4, $09
	dc.b	nRst, $03, nD4, $06, nRst, $12, nD4, $18
	smpsAlterVol        $01
	smpsSetvoice        $1D

Mus91_Credits_Loop13:
	dc.b	nD3, $03, nRst, nD3, $06, nD4, $03, nRst, nD4, $06, nD4, $03
	dc.b	nRst, nD4, $06, nD4, $03, nRst, nD4, $06
	smpsLoop            $00, $02, Mus91_Credits_Loop13

Mus91_Credits_Loop14:
	dc.b	nD4, $03, nRst, nD4, $06, nD4, $03, nRst, nD4, $06, nD4, $03
	dc.b	nRst, nD4, $06, nD4, $03, nRst, nD4, $06
	smpsLoop            $00, $02, Mus91_Credits_Loop14
	dc.b	nD3, $03, nRst, nD3, $06, nD4, $03, nRst, nD4, $06, nD4, $03
	dc.b	nRst, nD4, $06, nD4, $03, nRst, nD4, $06, nD4, $03, nRst, nD4
	dc.b	$06, nD4, $03, nRst, nD4, $06, nD4, $03, nRst, nD4, $06, nD4
	dc.b	$03, nRst, nD4, $06, nD3, $03, nRst, nD3, $06, nD4, $03, nRst
	dc.b	nD4, $06, nD4, $03, nRst, nD4, $06, nD4, $03, nRst, nD4, $06
	dc.b	nD3, $03, nRst, $09, nRst, $24
	smpsAlterVol        $F8
	dc.b	nD4, $06, nRst, $03, nD4, nRst, $06, nD4, $12, nRst, $06, nD4
	dc.b	$02, nRst, $01, nD4, $02, nRst, $01, nD3, $06, nRst, $03, nD3
	dc.b	$03, nRst, $06, nD3, $12, nRst, $06, nD3, $02, nRst, $01, nD3
	dc.b	$02, nRst, $01

Mus91_Credits_Loop15:
	dc.b	nD4, $06, nRst, $03, nD4, $06, nRst, $03, nD4, $02, nRst, $01
	dc.b	nD4, $02, nRst, $01
;	smpsAlterPitch      $FF
	smpsLoop            $00, $04, Mus91_Credits_Loop15
;	smpsAlterPitch      $04
	dc.b	nD3, $06, nRst, $03, nD3, nRst, $06, nD3, $12, nRst, $06, nD3
	dc.b	$02, nRst, $01, nD3, $02, nRst, $01, nD3, $06, nRst, $03, nD3
	dc.b	nRst, $06, nD3, $12, nRst, $06, nD4, $02, nRst, $01, nD3, $02
	dc.b	nRst, $01, nD4, $06, nRst, $03, nD4, nRst, $06, nD4, $12, nRst
	dc.b	$06, nD4, $02, nRst, $01, nD4, $02, nRst, $01, nD4, $06, nRst
	dc.b	nD3, $24
	smpsSetvoice        $1D
	smpsAlterPitch      $0C
	smpsAlterVol        $07
	smpsNoteFill        $06

Mus91_Credits_Loop16:
	smpsCall            Mus91_Credits_Call10
;	smpsAlterPitch      $06
	smpsCall            Mus91_Credits_Call10
;	smpsAlterPitch      $FF
	smpsCall            Mus91_Credits_Call10
;	smpsAlterPitch      $02
	smpsCall            Mus91_Credits_Call10
;	smpsAlterPitch      $F9
	smpsLoop            $02, $02, Mus91_Credits_Loop16
	smpsNoteFill        $00
	smpsAlterPitch      $F4
	smpsAlterVol        $FC
	smpsSetvoice        $1D
	dc.b	nRst, $30, nRst, $30, nD4, $03, nRst, nD4, nRst, nD4, nRst, nD4
	dc.b	nRst, nD4, nRst, nD4, nRst, nD4, nRst, nD4, $02, nRst, nD4
	smpsAlterVol        $02
	dc.b	nRst, $04, nD4, $08, nD5, $03, nRst, nD4, nRst, nD4, $06, nRst
	dc.b	nD4, $04, nD4, nRst, $02, nD4, nRst, $04, nD4, $08, nD4, $03
	dc.b	nRst, nD4, nRst, nD4, nRst, nD4, nRst, nD4, $04, nD4, nRst, $02
	dc.b	nD4, nRst, $04, nD4, $08, nD4, $03, nRst, nD4, nRst, nD4, $09
	dc.b	nRst, $03, nD4, $0A, nD4, $02
	smpsAlterPitch      $0C
	smpsAlterVol        $FE
	smpsSetvoice        $1D
	dc.b	nRst, $60

Mus91_Credits_Loop17:
	dc.b	nD3, $06, nRst, nD3, nRst, nD3, nRst, nD3, nRst, nD3, $12, nD3
	dc.b	$0C, nD3, $06, nD3, $0C, nD3, $06, nRst, nD3, nRst, nD3, nRst
	dc.b	nD3, nRst, nD4, $12, nD4, $0C, nD4, $06, nD4, $0C
	smpsLoop            $00, $02, Mus91_Credits_Loop17
	dc.b	nD3, $06, nRst, nD3, nRst, nD3, nRst, nD3, nRst, nD3, $06, nD3
	dc.b	$06, nD3, $06, nRst, nD3, nRst, nD3, nRst, nD3, $06, nRst, nD3
	dc.b	nRst, nD3, nRst, nD3, nRst, nD3, $06, nRst, nD3, nRst, nD4, nRst
	dc.b	nD4, nRst, nRst, $0C, nD3, $12, nRst, $06, nD3, $12, nD3, $12
	dc.b	nD3, $06, nRst
	smpsAlterVol        $FD
	dc.b	nD2, $6C, smpsNoAttack, $60
	smpsStop

	; Unused data
	; Could this be a blanked-out 'smpsNop $01'? It's near an smpsStop.
	dc.b	$00, $01

Mus91_Credits_Call0F:
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	smpsNoteFill        $00
	dc.b	$0C
	smpsReturn

Mus91_Credits_Call10:
	dc.b	nD4, $03, nD4, nD3, nD3, nD3, nD3, nD3, nD3
	smpsLoop            $00, $02, Mus91_Credits_Call10
	smpsReturn

; FM3 Data
Mus91_Credits_FM3:
	dc.b	nRst, $60
	smpsLoop            $00, $08, Mus91_Credits_FM3
	smpsSetvoice        $1F
	smpsAlterVol        $01
	smpsPan             panRight, $00
	dc.b	nD6, $06, nD6, nD6, nD6, nD6, nD6, nD6, nD6, nD6, nD6, nD6
	dc.b	nD6, nD6, nD6, nD7, nD7

Mus91_Credits_Loop0C:
	smpsPan             panRight, $00
	dc.b	nD7
	smpsPan             panRight, $00
	dc.b	nD7
	smpsAlterVol        $02
	smpsLoop            $00, $0D, Mus91_Credits_Loop0C
	smpsPan             panRight, $00
	smpsSetvoice        $1F
	smpsAlterVol        $E5
	smpsAlterPitch      $E8
	dc.b	nD6, $06, nD6, nD7, $0C, nD6, nRst, $4E, nRst, nD6, $06, nD6
	dc.b	nD7, $0C, nD7, nRst, $4E, nRst, nD6, $06, nD6, nD7, $0C, nD6
	dc.b	nRst, $36, nRst, nD7, $06, nRst, $12, nD6, $18, nD6, $06, nRst
	dc.b	nD6, nRst, nD7, nRst
	smpsModOff
	smpsSetvoice        $1F
	smpsAlterVol        $FE

Mus91_Credits_Loop0D:
	dc.b	nD6, $01, smpsNoAttack, nD5, $1B, nRst, $08, nD5, $01, smpsNoAttack, nD5, $1B
	dc.b	nRst, $08
	smpsLoop            $00, $02, Mus91_Credits_Loop0D
	dc.b	nD6, $01, smpsNoAttack, nD5, $0B, nRst, $0C, nD5, $01, smpsNoAttack, nD5, $0B
	dc.b	nRst, $0C, nD6, $01, smpsNoAttack, nD6, $1B, nRst, $08, nD6, $01, smpsNoAttack
	dc.b	nD5, $24, smpsNoAttack, $18, smpsNoAttack, $5A, nRst, $06
	smpsAlterPitch      $18
	dc.b	nRst, $60, nRst, nRst, $30
	smpsAlterPitch      $E8
	smpsSetvoice        $1F
	smpsAlterPitch      $0C
	smpsAlterVol        $03
	smpsAlterNote       $02
	dc.b	nRst, $18, nD5, $06, nD5, nD6, nD6
	smpsAlterPitch		$03
	smpsCall            Mus91_Credits_Call0C
	smpsSetvoice        $1F
	smpsAlterPitch      $09
	smpsAlterVol        $0B
	dc.b	nRst, $0C, nD5, nD5, nD6
	smpsAlterPitch		$03
	smpsCall            Mus91_Credits_Call0D
	smpsSetvoice        $1F
	smpsAlterVol        $EC
	dc.b	nRst, $06
	smpsAlterNote       $14
	smpsAlterPitch		$FD
	dc.b	nD5, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, nD5, $03
	smpsNoteFill        $05
	dc.b	nD6, $03, nD6, $06, nD5, $03, nD6
	smpsNoteFill        $00
	dc.b	nD6
	smpsAlterVol        $FC
	smpsAlterPitch      $30
	smpsSetvoice        $1F
	dc.b	nD4, $03
	smpsAlterVol        $07
	dc.b	nD4
	smpsAlterVol        $07
	dc.b	nD4
	smpsAlterVol        $07
	dc.b	nD4
	smpsSetvoice        $1F
	smpsAlterVol        $EF
	smpsAlterPitch      $D0
	dc.b	nD6, $03, nD6, nD6, nRst, $09
	smpsAlterNote       $EC
	dc.b	nD7, $01, smpsNoAttack
	smpsAlterNote       $00
	smpsModSet          $2C, $01, $04, $04
	dc.b	nD7, $23
	smpsModOff
	smpsSetvoice        $1F
	smpsAlterVol        $FF
	smpsAlterNote       $03
	smpsAlterPitch		$03
	smpsCall            Mus91_Credits_Call0E
	smpsAlterNote       $00
	smpsSetvoice        $1F
	smpsAlterVol        $09
	smpsAlterPitch		$FD
	dc.b	nRst, $30, nRst, $30, nRst, $2E, nD5, $02, nRst, $04, nD5, $08
	dc.b	nD5, $03, nRst, nD5, nRst, nD5, $03, nRst, $13, nD5, $02, nRst
	dc.b	$04, nD5, $08, nD5, $03, nRst, nD5, nRst, nD5, $03, nRst, $15
	dc.b	nRst, $04, nD6, $08, nD6, $03, nRst, nD6, nRst, nD6, nRst, nD6
	dc.b	nRst, nD6, $04, nD6, $02, nD6, $04, nD6, $02
	smpsSetvoice        $1F
	smpsAlterVol        $F9
	dc.b	nRst, $60

Mus91_Credits_Loop0E:
	dc.b	nD6, $06, nRst, nD6, nRst, nD6, nRst, nD6, nRst, nD6, $12, nD6
	dc.b	$1E, nD6, $06, nRst, nD6, nRst, nD6, nRst, nD6, nRst, nD6, $12
	dc.b	nD6, $1E
	smpsLoop            $00, $02, Mus91_Credits_Loop0E
	dc.b	nRst, $0C, nD6, $12, nRst, $06, nD6, nRst, nD6, $12, nD6, nD6
	dc.b	$0C, nD5, $18, nD5, nD6, nD6, nRst, $0C, nD6, nRst, nD6, $12
	dc.b	nD6, nD6, $06, nRst
	smpsSetvoice        $1F
	smpsAlterVol        $F8
	smpsAlterNote       $03
	dc.b	nD2, $6C, smpsNoAttack, $60
	smpsStop

Mus91_Credits_Call14:
	dc.b	nD6, $06, nD6, nD6, nD6, nD6, nD6, nD6, nD6, nD6, nD6, nD6
	dc.b	nD6, nD6, nD6, nD7, nD7
	smpsReturn

; FM4 Data
Mus91_Credits_FM4:
	smpsSetvoice        $20
	dc.b	nRst, $60
	smpsAlterVol        $08
	smpsCall            Mus91_Credits_Call08
	dc.b	nB5, $0C, nB5, nRst, nRst, nB5, nB5, nRst, nRst
	smpsCall            Mus91_Credits_Call08
	dc.b	nB5, $24, $24, $18
	smpsPan             panCenter, $00
	smpsCall            Mus91_Credits_Call03
	smpsAlterVol        $F2

Mus91_Credits_Loop09:
	dc.b	nB5, $01, smpsNoAttack, nB5, $1B, nRst, $08, nB5, $01, smpsNoAttack, nB5, $1B
	dc.b	nRst, $08
	smpsLoop            $00, $02, Mus91_Credits_Loop09
	dc.b	nB5, $01, smpsNoAttack, nB5, $0B, nRst, $0C, nB5, $01, smpsNoAttack, nB5, $0B
	dc.b	nRst, $0C, nB5, $01, smpsNoAttack, nB5, $1B, nRst, $08, nB5, $01, smpsNoAttack
	dc.b	nB5, $24, smpsNoAttack, $18, smpsNoAttack, $5A, nRst, $06
	smpsAlterPitch      $18
	dc.b	nRst, $60, nRst, nRst, $5A
	smpsPan             panCenter, $00
	smpsSetvoice        $20
	smpsAlterPitch      $F4
	smpsAlterVol        $05

Mus91_Credits_Loop0A:
	dc.b	nB6, $09, nRst, $03, nB6, nRst, nB6, $06, nRst, nB6, $0C, nRst
	dc.b	$06
	smpsLoop            $00, $02, Mus91_Credits_Loop0A
	dc.b	nRst, $12, nB6, $03, nRst, $0F, nB6, $03, nRst, $1B, nB6, $03
	dc.b	nRst, $0F, nB6, $03, nRst, $09, nB6, $09, nRst, $03, nB6, nRst
	dc.b	nB6, $06, nRst, nB6, $0C, nRst, $06, nB6, $09, nRst, $03, nB6
	dc.b	nRst, nB6, $06, nRst, nB6, $0C, nRst, $06, nRst, nRst, $0C, nB6
	dc.b	$03, nRst, $0F, nB6, $03, nRst, $0F, nB6, $03, nRst, $2D
	smpsAlterPitch      $F4
	smpsAlterVol        $03
	smpsSetvoice        $20
	smpsPan             panCenter, $00
	smpsCall            Mus91_Credits_Call09
	smpsSetvoice        $20
	smpsAlterVol        $F6
	smpsAlterPitch      $18
	smpsCall            Mus91_Credits_Call0A
	dc.b	nRst, $0C
	smpsAlterNote       $EC
	dc.b	nB5, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $0A, nRst, $03, nB5, nRst, nRst, nB5, nRst, $09
	smpsCall            Mus91_Credits_Call0A
	smpsAlterNote       $EC
	dc.b	nB5, $02
	smpsAlterNote       $00
	dc.b	$0A, nRst, $06
	smpsModSet          $18, $01, $07, $04
	smpsAlterNote       $E2
	dc.b	nB5, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$1C
	smpsAlterNote       $00
	smpsAlterNote       $03
	smpsCall            Mus91_Credits_Call06
	smpsAlterNote       $00
	smpsPan             panCenter, $00
	smpsSetvoice        $20
	smpsAlterVol        $F5
	dc.b	nRst, $60

Mus91_Credits_Loop0B:
	dc.b	nB6, $06, nRst, nB6, nRst, nB5, nRst, nB5, nRst, nB5, $12, nB5
	dc.b	$1E, nB6, $06, nRst, nB6, nRst, nB5, nRst, nB5, nRst, nB6, $12
	dc.b	nB6, $1E
	smpsLoop            $00, $02, Mus91_Credits_Loop0B
	smpsSetvoice        $20
	smpsAlterNote       $03
	smpsAlterVol        $08
	smpsCall            Mus91_Credits_Call0B
	smpsSetvoice        $20
	smpsAlterVol        $F0
	smpsModSet          $00, $01, $06, $04
	dc.b	nB2, $6C, smpsNoAttack, $60
	smpsStop

Mus91_Credits_Call08:
	dc.b	nB5, $24, $24, $18, nB5, $24, $24, $18, nB5, $24, $24, $18
	smpsReturn

Mus91_Credits_Call03:
	smpsSetvoice        $20
	smpsAlterPitch      $E8
	smpsAlterVol        $0D

Mus91_Credits_Loop2D:
	smpsCall            Mus91_Credits_Call1B
	dc.b	nB5, nB5
	smpsLoop            $00, $02, Mus91_Credits_Loop2D
	smpsCall            Mus91_Credits_Call1B
	dc.b	nB4, nB4, nB5, nB5, nB4, nB4, nB4, nB4, nB4, nB4, nB4, nB4
	smpsAlterVol        $03
	smpsAlterPitch      $0C
	smpsSetvoice        $20
	dc.b	nB6, $18, nB6, nB6
	smpsAlterPitch      $F4
	smpsSetvoice        $20
	smpsReturn

Mus91_Credits_Call1B:
	dc.b	nB5, $0C, nB5, nB5, nB5, nB4, nB4, nB4, nB4, nB5, nB5, nB4
	dc.b	nB4, nB4, nB4
	smpsReturn

Mus91_Credits_Call0A:
	dc.b	nRst, $0C
	smpsAlterNote       $EC
	dc.b	nB5, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $06, nRst, $01, nB5, $03, nRst, $18, nRst, $0C
	smpsAlterNote       $EC
	dc.b	nB6, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $06, nRst, $01, nB6, $03, nRst, $18, nRst, $0C
	smpsAlterNote       $EC
	dc.b	nB6, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $06, nRst, $01, nB6, $03, nRst, $18
	smpsReturn

Mus91_Credits_Call06:
	smpsAlterVol        $08
	smpsSetvoice        $20
	dc.b	nRst, $30, nRst, $30
	smpsChanTempoDiv    $01
	smpsCall            Mus91_Credits_Call17
	smpsChanTempoDiv    $02
	smpsSetvoice        $20
	smpsModSet          $01, $01, $01, $04
	dc.b	nB6, $02, nRst, $04, nB6, $08, nB6, $03, nRst, nB6, nRst, nB6
	dc.b	nRst, nB6, nRst, nB6, nRst, $07, nB5, $02, nRst, $04, nB5, $08
	dc.b	nB5, $03, nRst, nB5, nRst, nB5, $03, nRst, $13, nB5, $0E, nB6
	dc.b	$0C, nB6, nB6, $0A, nB6, $02
	smpsReturn

Mus91_Credits_Call17:
	dc.b	nB3, $01, smpsNoAttack, nB3, $04, nRst, $07, nB3, $01, smpsNoAttack, nB3, $04
	dc.b	nRst, $07, nB4, $01, smpsNoAttack, nB3, $04, nRst, $07, nB4, $01, smpsNoAttack
	dc.b	nB3, $04, nRst, $07, nB4, $01, smpsNoAttack, nB4, $04, nRst, $07, nB4
	dc.b	$01, smpsNoAttack, nB4, $04, nRst, $07, nB4, $01, smpsNoAttack, nB4, $04, nRst
	dc.b	$07, nB4, $01, smpsNoAttack, nB4, $04, nRst, $03
	smpsReturn

Mus91_Credits_Call0B:
	dc.b	nRst, $0C, nB6, nB6, nB6, nB6, nRst, $06, nB6, $0C, nB6, $06
	dc.b	nB6, $0C, nB6, $54, nRst, $0C, nB6, nRst, nB6, nRst, $12, nB6
	dc.b	nB6, $0C
	smpsReturn

; FM5 Data
Mus91_Credits_FM5:
	smpsSetvoice        $20
	dc.b	nRst, $60
	smpsAlterVol        $F0
	smpsCall            Mus91_Credits_Call02
	dc.b	nG5, $0C, $0C, nRst, $18, nG5, $0C, $0C, nRst, $18
	smpsCall            Mus91_Credits_Call02
	dc.b	nG5, $24, $24, $18
	smpsPan             panCenter, $00
	smpsAlterPitch		$FC
	smpsCall            Mus91_Credits_Call03
	smpsAlterPitch		$04
	smpsAlterVol        $F2

Mus91_Credits_Loop07:
	dc.b	nG5, $01, smpsNoAttack, nG5, $1B, nRst, $08, nG5, $01, smpsNoAttack, nG5, $1B
	dc.b	nRst, $08
	smpsLoop            $00, $02, Mus91_Credits_Loop07
	dc.b	nG5, $01, smpsNoAttack, nG5, $0B, nRst, $0C, nG5, $01, smpsNoAttack, nG5, $0B
	dc.b	nRst, $0C, nG5, $01, smpsNoAttack, nG5, $1B, nRst, $08, nG5, $01, smpsNoAttack
	dc.b	nG5, $24, smpsNoAttack, $18, smpsNoAttack, $5A, nRst, $06
	smpsAlterPitch      $18
	smpsPan             panCenter, $00
	smpsAlterVol        $03
	smpsAlterPitch      $0C
	smpsSetvoice        $20
	dc.b	nRst, $4E, nG4, $03, nG4, nG5, nRst, nG4, nRst, $51, nG5, $03
	dc.b	nG5, nG5, nRst, nG5, nRst, $5D
	smpsSetvoice        $20
	smpsAlterPitch      $E8
	smpsAlterVol        $02

Mus91_Credits_Loop08:
	dc.b	nG6, $09, nRst, $03, nG6, nRst, nG6, $06, nRst, nG6, $0C, nRst
	dc.b	$06
	smpsLoop            $00, $02, Mus91_Credits_Loop08
	dc.b	nRst, $12, nG6, $03, nRst, $0F, nG6, $03, nRst, $1B, nG6, $03
	dc.b	nRst, $0F, nG6, $03, nRst, $09, nG6, $09, nRst, $03, nG6, nRst
	dc.b	nG6, $06, nRst, nG6, $0C, nRst, $06, nG6, $09, nRst, $03, nG6
	dc.b	nRst, nG6, $06, nRst, nG6, $0C, nRst, $18, nG6, $03, nRst, $0F
	dc.b	nG6, $03, nRst, $0F, nG6, $03, nRst, $2D
	smpsSetvoice        $20
	smpsPan             panCenter, $00
	smpsAlterPitch      $F4
	smpsAlterVol        $03
	smpsCall            Mus91_Credits_Call04
	smpsSetvoice        $20
	smpsAlterPitch      $24
	smpsAlterVol        $F4
	smpsCall            Mus91_Credits_Call05
	dc.b	nG6, nG6, nG6
	smpsCall            Mus91_Credits_Call05
	dc.b	nG6, nG6, nG6
	smpsAlterPitch      $F0
	smpsCall            Mus91_Credits_Call06
	smpsPan             panCenter, $00
	smpsSetvoice        $20
	smpsAlterNote       $03
	smpsAlterVol        $F8
	dc.b	nRst, $60
	smpsCall            Mus91_Credits_Call07
	smpsAlterVol        $00
	smpsSetvoice        $20
	smpsAlterPitch		$04
	dc.b	nRst, $60, nRst, $0C, nG6, $06, nRst, nG6, nG6, $06, nRst, $0C
	dc.b	nG6, $06, nRst, nG6, nG6, $06, nRst, $18
	smpsAlterVol        $05
	dc.b	nRst, $0C, nG3, nRst, nG3
	smpsStop

Mus91_Credits_Call02:
	dc.b	nG5, $24, $24, $18, nG5, $24, $24, $18, nG5, $24, $24, $18
	smpsReturn

; PSG1 Data
Mus91_Credits_PSG1:
	dc.b	nRst, $60
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $03
	smpsNoteFill        $06
	smpsCall            Mus91_Credits_Call11
	smpsPSGvoice        fTone_08
	smpsNoteFill        $00
	smpsPSGAlterVol     $FD

Mus91_Credits_Loop2A:
	dc.b	nRst, $18, nB6, $06, nRst, $1E, nB6, $0C, nRst, $18, nRst, $18
	dc.b	nB5, $06, nRst, $1E, nB5, $0C, nRst, $18
	smpsLoop            $00, $03, Mus91_Credits_Loop2A
	dc.b	nRst, $18, nB5, $06, nRst, $1E, nB5, $0C, nRst, $18, nRst, $18
	dc.b	nB5, $06, nRst, $1E, nB5, $0C, nRst, $18
	smpsPSGvoice        fTone_08
	smpsModSet          $0E, $01, $01, $03
	smpsNoteFill        $10
	dc.b	nB5, $24, nB5, nB5, nB5, nB5, $0C, nRst, nB5, nRst, nB5, $24
	smpsNoteFill        $00
	dc.b	nB5, $60, smpsNoAttack, $3C
	smpsModOff
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $01

Mus91_Credits_Loop2B:
	dc.b	nRst, $06, nB6, $0C, nB6, nB6, nB6, $06, nRst, nB6, $0C, nB6
	dc.b	nB6, $03, $09, $06
;	smpsAlterPitch      $05
	smpsLoop            $00, $02, Mus91_Credits_Loop2B
;	smpsAlterPitch      $F6
	dc.b	nRst, $06, nB6, $0C, nB6, nB6, nB6, $06, nRst, $30
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $01
	smpsCall            Mus91_Credits_Call15
	dc.b	nRst, $02, nRst, $30
	smpsPSGAlterVol     $03
	smpsAlterPitch      $F4
	smpsPSGvoice        fTone_08
	smpsCall            Mus91_Credits_Call09
	smpsAlterPitch      $0C
	smpsPSGAlterVol     $FC
	smpsPSGvoice        fTone_08
	smpsCall            Mus91_Credits_Call16
	dc.b	nRst, $0C, nB5, nRst, $03, nB5, nRst, nRst, nB5, nRst, $09
	smpsCall            Mus91_Credits_Call16
	dc.b	nB5, $0C, nRst, $06, nB5, $1E
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $04
	dc.b	nRst, $30, nRst, $30
	smpsChanTempoDiv    $01
	smpsCall            Mus91_Credits_Call17
	smpsChanTempoDiv    $02
	dc.b	nB6, $02, nRst, $04, nB6, $08, nB6, $03, nRst, nB6, nRst, nB6
	dc.b	nRst, nB6, nRst, nB6, nRst, $07, nB5, $02, nRst, $04, nB5, $08
	dc.b	nB5, $03, nRst, nB5, nRst, nB5, $03, nRst, $13, nB5, $0E, nB6
	dc.b	$0C, nB6, nB6, $0A, nB6, $02, nRst, $60, nRst, nRst, nRst, nRst
	smpsPSGAlterVol     $FF
	dc.b	nRst, $0C, nB5, $12, nRst, $06, nB5, nRst, nB5, $12, nB5, nB5
	dc.b	$0C, nB5, $18, nB5, nB5, nB6, nRst, $0C, nB6, nRst, nB6, $12
	dc.b	nB6, nB6, $06
	smpsStop

Mus91_Credits_Call16:
	dc.b	nRst, $0C, nB5, $07, nRst, $02, nB5, $03, nRst, $18, nRst, $0C
	dc.b	nB5, $07, nRst, $02, nB5, $03, nRst, $18, nRst, $0C, nB5, $07
	dc.b	nRst, $02, nB5, $03, nRst, $18
	smpsReturn

; PSG2 Data
Mus91_Credits_PSG2:
	dc.b	nRst, $60
	smpsLoop            $00, $08, Mus91_Credits_PSG2
	dc.b	nRst, $02
	smpsCall            Mus91_Credits_Call14
	smpsPSGAlterVol     $FE
;	smpsPSGvoice        fTone_01
	dc.b	nRst, $16, nD6, $06, nRst, $1E, nD6, $0C, nRst, $18, nRst, $18
	dc.b	nD6, $06, nRst, $1E, nD6, $0C, nRst, $18

Mus91_Credits_Loop24:
	dc.b	nRst, $18, nD6, $06, nRst, $1E, nD6, $0C, nRst, $18, nRst, $18
	dc.b	nD6, $06, nRst, $1E, nD6, $0C, nRst, $18
	smpsLoop            $00, $02, Mus91_Credits_Loop24
	dc.b	nRst, $18, nD6, $06, nRst, $1E, nD6, $0C, nRst, $18, nRst, $18
	dc.b	nD5, $06, nRst, $1E, nD5, $0C, nRst, $18
	smpsNoteFill        $06
;	smpsPSGvoice        fTone_06

Mus91_Credits_Loop25:
	dc.b	nD7, $0C, nD6, nD6, nD6
	smpsLoop            $00, $08, Mus91_Credits_Loop25
	smpsNoteFill        $00
;	smpsPSGvoice        fTone_09
	smpsPSGAlterVol     $01

Mus91_Credits_Loop26:
	dc.b	nRst, $06, nD6, $0C, nD6, nD6, nD6, $06, nRst, nD6, $0C, nD6
	dc.b	nD6, $03, $09, $06
;	smpsAlterPitch      $05
	smpsLoop            $00, $02, Mus91_Credits_Loop26
;	smpsAlterPitch      $F6
	dc.b	nRst, $06, nD6, $0C, nD6, nD6, nD6, $06, nRst, $30, nRst, $02
	smpsAlterNote       $01
	smpsPSGAlterVol     $03
	smpsAlterPitch		$03
	smpsCall            Mus91_Credits_Call15
	smpsAlterNote       $00
	dc.b	nRst, $30
	smpsPSGAlterVol     $01
	smpsAlterPitch      $F4
;	smpsPSGvoice        fTone_05
	smpsAlterPitch		$F8
	smpsCall            Mus91_Credits_Call04
	smpsAlterPitch      $0C
	smpsPSGAlterVol     $FD
	smpsNoteFill        $03
	smpsAlterPitch		$05

Mus91_Credits_Loop27:
	dc.b	nD7, $03, nD7, nD7, nD7, nD7, nD7, nD7, nD7
	smpsLoop            $00, $02, Mus91_Credits_Loop27

Mus91_Credits_Loop28:
	dc.b	nD6, nD6, nD7, nD6, nD7, nD6, nD7, nD6
	smpsLoop            $00, $02, Mus91_Credits_Loop28

Mus91_Credits_Loop29:
	dc.b	nD6, nD6, nD7, nD6, nD7, nD6, nD7, nD6
	smpsLoop            $00, $04, Mus91_Credits_Loop29
	smpsLoop            $01, $02, Mus91_Credits_Loop27
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst
    if ~~FixMusicAndSFXDataBugs
	; These rests are unnecessary, and cause the following notes to play way too late.
	; Delete these three notes to fix this.
	dc.b	nRst, nRst, nRst
	; This erroneous FM-only command causes the following notes to be inaudible.
	smpsAlterVol        $0C
    endif
	smpsAlterNote       $02
	smpsPSGAlterVol     $02
	dc.b	nRst, $0C, nD6, $06, nRst, nD6, nD6, $06, nRst, $0C, nD6, $06
	dc.b	nRst, nD6, nD6
	smpsStop

; PSG3 Data
Mus91_Credits_PSG3:
	smpsPSGform         $E7
	smpsNoteFill        $04

Mus91_Credits_Loop18:
	dc.b	nMaxPSG, $0C
	smpsLoop            $00, $48, Mus91_Credits_Loop18
	smpsNoteFill        $06

Mus91_Credits_Loop19:
	dc.b	$0C
	smpsLoop            $00, $60, Mus91_Credits_Loop19
	smpsPSGAlterVol     $FF
	smpsCall            Mus91_Credits_Call13
	smpsNoteFill        $0E
	dc.b	$0C
	smpsNoteFill        $03
	dc.b	$06, $06, $03, $03, $06, $03, $03, $06

Mus91_Credits_Loop1A:
	smpsCall            Mus91_Credits_Call13
	smpsLoop            $00, $04, Mus91_Credits_Loop1A
;	smpsPSGvoice        fTone_09
	smpsPSGAlterVol     $01
;	smpsAlterPitch      $0C

Mus91_Credits_Loop1B:
	dc.b	nMaxPSG, $06, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG
	smpsLoop            $00, $02, Mus91_Credits_Loop1B

Mus91_Credits_Loop1C:
	dc.b	nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG
	smpsLoop            $00, $02, Mus91_Credits_Loop1C
	dc.b	nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG
	dc.b	nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG, nMaxPSG
	dc.b	nMaxPSG, $06, nRst, $1E
	smpsNoteFill        $02
;	smpsAlterPitch      $F5

Mus91_Credits_Loop1D:
;	smpsPSGvoice        fTone_04
	dc.b	nMaxPSG, $03, $03
	smpsPSGAlterVol     $02
;	smpsPSGvoice        fTone_08
	smpsNoteFill        $08
	dc.b	$06
	smpsNoteFill        $03
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $1E, Mus91_Credits_Loop1D
	dc.b	nRst, $24

Mus91_Credits_Loop1E:
;	smpsPSGvoice        fTone_04
	dc.b	$03, $03
	smpsPSGAlterVol     $02
;	smpsPSGvoice        fTone_08
	smpsNoteFill        $08
	dc.b	$06
	smpsNoteFill        $03
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $20, Mus91_Credits_Loop1E
	dc.b	nRst, $30
	smpsNoteFill        $01
;	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $03

Mus91_Credits_Loop1F:
	dc.b	nMaxPSG, $02, nRst, nMaxPSG
	smpsLoop            $00, $08, Mus91_Credits_Loop1F

Mus91_Credits_Loop20:
	dc.b	nRst, $04, nMaxPSG, $02
	smpsLoop            $00, $08, Mus91_Credits_Loop20
	smpsPSGAlterVol     $FF

Mus91_Credits_Loop21:
	dc.b	nMaxPSG, $02, nRst, nMaxPSG
	smpsLoop            $00, $18, Mus91_Credits_Loop21
	smpsPSGAlterVol     $FE

Mus91_Credits_Loop22:
	dc.b	nMaxPSG, $04, nRst, nMaxPSG
	smpsLoop            $00, $08, Mus91_Credits_Loop22

Mus91_Credits_Loop23:
	smpsNoteFill        $03
	dc.b	$0C
	smpsNoteFill        $0C
	dc.b	$0C
	smpsNoteFill        $03
	dc.b	$0C
	smpsNoteFill        $0C
	dc.b	$0C
	smpsLoop            $00, $0D, Mus91_Credits_Loop23
	smpsNoteFill        $03
	dc.b	$06
	smpsNoteFill        $0E
	dc.b	$12
	smpsNoteFill        $03
	dc.b	$0C
	smpsNoteFill        $0F
	dc.b	$0C
	smpsStop

; DAC Data
Mus91_Credits_DAC:
	dc.b	dSnare, $06, dSnare, dSnare, dSnare, dSnare, $0C, $06, $0C, $06, $0C, $0C
	dc.b	$0C
	smpsCall            Mus91_Credits_Call00
	dc.b	dSnare, $18, dSnare, $0C, dSnare, dSnare, $18, dSnare, $0C, dSnare
	smpsCall            Mus91_Credits_Call00
	dc.b	dSnare, $0C, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare

Mus91_Credits_Loop00:
	dc.b	dSnare, $18, dSnare, $0C, dSnare, $18, $0C, dSnare, $18
	smpsLoop            $00, $07, Mus91_Credits_Loop00
	dc.b	dSnare, $18, dSnare, $0C, dSnare, $18, dSnare, $0C, $0C, $0C

Mus91_Credits_Loop01:
	dc.b	dSnare, $18, dSnare, $0C, dSnare, $18, $0C, dSnare, $18
	smpsLoop            $00, $03, Mus91_Credits_Loop01
	dc.b	dSnare, $18, dSnare, $0C, dSnare, $18, dSnare, $0C, dSnare, dSnare
	smpsSetTempoDiv     $02

Mus91_Credits_Loop02:
	dc.b	dSnare, $12, dSnare, $06, dSnare, $0C, dSnare
	smpsLoop            $00, $05, Mus91_Credits_Loop02
	dc.b	dSnare, $12, dSnare, $06, dSnare, $06, dSnare, dSnare, dSnare

Mus91_Credits_Loop03:
	dc.b	dSnare, $0C
	smpsLoop            $00, $18, Mus91_Credits_Loop03
	dc.b	dSnare, $0C, dSnare, dSnare, dSnare, $06, dSnare, $02, dSnare, dSnare, dSnare, $0C
	dc.b	nRst, $24

Mus91_Credits_Loop04:
	dc.b	dSnare, $0C, dSnare, dSnare, dSnare
	smpsLoop            $00, $07, Mus91_Credits_Loop04
	dc.b	dSnare, $0C, dSnare, dSnare, $03, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare
	smpsCall            Mus91_Credits_Call01
	dc.b	dSnare, $02, dSnare, $01, dSnare, $05, dSnare, $01, dSnare, $05, dSnare, $06
	smpsCall            Mus91_Credits_Call01
	dc.b	dSnare, $02, dSnare, $01, dSnare, $05, dSnare, $01, dSnare, $05, dSnare, $01
	dc.b	dSnare, $02, dSnare, $03, dSnare, $03, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare
	dc.b	dSnare, dSnare, dSnare, $09, dSnare, $06, $03, $03, dSnare, $09, $03, dSnare
	dc.b	$09, dSnare, $06, $06, $03, dSnare, $06, $03, $03, dSnare, $06, dSnare
	dc.b	dSnare, dSnare, dSnare, dSnare, dSnare, $04, $02, $04, dSnare, $02

Mus91_Credits_Loop05:
	dc.b	nRst, $04, dSnare, $08, dSnare, $06, dSnare, dSnare, $0C, dSnare, $0A, dSnare
	dc.b	$02
	smpsLoop            $00, $03, Mus91_Credits_Loop05
	smpsSetTempoDiv     $01
	dc.b	nRst, $18, dSnare, $14, dSnare, $04, dSnare, $0C, dSnare, dSnare, $0C, $08
	dc.b	dSnare, $04

Mus91_Credits_Loop06:
	dc.b	dSnare, $0C, dSnare, dSnare, dSnare
	smpsLoop            $01, $03, Mus91_Credits_Loop06
	dc.b	dSnare, $0C, dSnare, dSnare, $06, nRst, $02, dSnare, dSnare, dSnare, $09, dSnare
	dc.b	$03
	smpsLoop            $00, $03, Mus91_Credits_Loop06
	dc.b	dSnare, $0C, dSnare, dSnare, dSnare, dSnare, $06, dSnare, $12, dSnare, $0C, dSnare
	smpsStop

Mus91_Credits_Call00:
	dc.b	dSnare, $18, dSnare, $0C, dSnare, $18, dSnare, $0C, dSnare, dSnare
	smpsLoop            $00, $03, Mus91_Credits_Call00
	smpsReturn

Mus91_Credits_Call01:
	dc.b	dSnare, $0C, dSnare, $09, dSnare, $06, $03, dSnare, $01, dSnare, $02, dSnare
	dc.b	$03, dSnare, $01, dSnare, $0B, dSnare, $0C, dSnare, $09, dSnare, $06, $03
	dc.b	dSnare, $01, dSnare, $02, dSnare, $03, dSnare, $01, dSnare, $0B, dSnare, $0C
	dc.b	dSnare, $09, dSnare, $06, $03, dSnare, $01, dSnare, $02, dSnare, $03, dSnare
	dc.b	$01, dSnare, $0B, dSnare, $0C, dSnare, $09, dSnare, $06, dSnare, $01
	smpsReturn

Mus91_Credits_Call11:
	smpsCall            Mus91_Credits_Call1A
	dc.b	nB5, nB5, nB5, nB5, nB5
	smpsCall            Mus91_Credits_Call1A
	dc.b	nB5, nB5, nB5, nB6, nB6
	smpsReturn

Mus91_Credits_Call1A:
	dc.b	nB5, $0C, nB5, nB5, nB6, nB6, nB5, nB5, nB5, nB5, nB5, nB5
	dc.b	nB6, nB5, nB5, nB5, nB5, nB5, nB5, nB5, nB5, nB5, nB5, nB5
	dc.b	nB5, nB5, nB5, nB5
	smpsReturn

; Unused alternate version of Mus91_Credits_Call0B
; Mus91_Credits_CallUnk:
	dc.b	nRst, $0C, nG6, nB6, nD7, nFs7, $0C, nRst, $06, nFs7, $0C, nG7
	dc.b	$06, nFs7, $0C, nE7, $60, nRst, $0C, nG6, nB6, nD7, nFs7, $0C
	dc.b	nRst, $06, nFs7, $0C, nG7, $06, nFs7, $0C, nAb7, $5D, nRst, $03
	dc.b	nA7, $12, nRst, $06, nA7, $12, nRst, $06, nRst, $06, nAb7, $12
	dc.b	nA7, $06, nRst, $12
	smpsReturn

Mus91_Credits_Call13:
	smpsNoteFill        $0E
	dc.b	$0C
	smpsNoteFill        $03
	dc.b	$06, $06, $06, $06, $06, $06
	smpsReturn

Mus91_Credits_Call0C:
	dc.b	nB6, $09, nRst, $03, nB6, $06, nB6
	smpsLoop            $00, $03, Mus91_Credits_Call0C
	dc.b	nB6, nB6, nB6, nB6, nB6, $0C, nB6, $06, smpsNoAttack, nB6, $4D, nRst
	dc.b	$01, nB6, $24, nB6, $0C, nB6, $24, nB6, $09, nRst, $03, nB6
	dc.b	$12, nB6, $1E
	smpsReturn

Mus91_Credits_Call15:
	dc.b	nRst, $30, nRst, nRst, nB6, $03, nB6, nB6, nB6, nB6, nB6, nB6
	dc.b	nB6, nB6, nB6, nB6, nB5, nB6, nB6, nB5, nB5, $33, nRst, $5E
	smpsReturn

Mus91_Credits_Call0D:
	dc.b	nB6, $2A, nB6, $03, nB6, nB6, $09, nB6, nB6, $06, nB6, $0C
	dc.b	nB6, nB6, $1E, nB6, $06, nB6, nB6, $1E, nB6, $0C, nB6, nB6
	dc.b	$2A, nB6, $03, nB6, nB6, $09, nB6, nB6, $06, nB6, $0C, nB6
	smpsReturn

Mus91_Credits_Call04:
	smpsCall            Mus91_Credits_Call19
	dc.b	nG6, $06, nRst, $03, nG6, nRst, $06, nG6, $18, nRst, $06

Mus91_Credits_Loop2C:
	dc.b	nG6, $06, nRst, $03, nG6, $06, nRst, $03, nG6, nRst
	smpsLoop            $00, $02, Mus91_Credits_Loop2C
	dc.b	nG6, $06, nRst, $03, nG6, $06, nRst, $03, nG6, $18, nRst, $06
;	smpsAlterPitch      $FE
	smpsCall            Mus91_Credits_Call19
;	smpsAlterPitch      $03
	smpsCall            Mus91_Credits_Call19
;	smpsAlterPitch      $FF
	dc.b	nRst, $06
	smpsNoteFill        $08
	dc.b	nG6, $09, $09, $09, $09
	smpsNoteFill        $05
	dc.b	$03, $03
	smpsNoteFill        $00
	dc.b	nRst, $0C, nG6, $24
	smpsReturn

Mus91_Credits_Call19:
	dc.b	nG6, $06, nRst, $03, nG6, nRst, $06, nG6, $18, nRst, $06
	smpsReturn

Mus91_Credits_Call09:
	dc.b	nB6, $06, nRst, $03, nB6, nRst, $06, nB6, $18, nRst, $06, nB6
	dc.b	$06, nRst, $03, nB6, nRst, $06, nB6, $18, nRst, $06, nB6, $06
	dc.b	nRst, $03, nB6, $06, nRst, $03, nB6, nRst, nB6, $06, nRst, $03
	dc.b	nB6, $06, nRst, $03, nB6, nRst, nB6, $06, nRst, $03, nB6, $06
	dc.b	nRst, $03, nB6, $18, nRst, $06, nB6, $06, nRst, $03, nB6, nRst
	dc.b	$06, nB6, $18, nRst, $06, nB6, $06, nRst, $03, nB6, nRst, $06
	dc.b	nB6, $18, nRst, $06, nRst, $06
	smpsNoteFill        $08
	dc.b	nB6, $09, $09, $09, $09
	smpsNoteFill        $05
	dc.b	$03, $03
	smpsNoteFill        $00
	dc.b	nRst, $0C, nB6, $24
	smpsReturn

Mus91_Credits_Call0E:
	smpsCall            Mus91_Credits_Call18
	dc.b	nB6, $12, nB6, $06, nB6, $12, nB6, $0C
	smpsCall            Mus91_Credits_Call18
	dc.b	nB6, $30, nRst, $06
	smpsReturn

Mus91_Credits_Call18:
	dc.b	nB6, $1E, nB6, $06, nB6, nB6, nB6, $0C, nB6, $06, nB6, $0C
	dc.b	nB6, $06, nB6, nB6, $24, nB6, $06, nB6
	smpsReturn

Mus91_Credits_Call05:
	dc.b	nRst, $03, nG6, nG6, $06, $06, nG5, nG6, $09, nG6, $09, nRst
	dc.b	$06, nRst, $03, nG6, nG6, $06, $06, nG5, nG6, $09, nG6, $09
	dc.b	nRst, $06, nRst, $03, nG6, nG6, $06, $06, nG5, nG6, $09, nG6
	dc.b	$0F, nG6, $0C
	smpsReturn

Mus91_Credits_Voices:
;	Voice $00
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $F8, 	$19, $37, $13, $80
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
	smpsVcReleaseRate   $08, $00, $00, $00
	smpsVcTotalLevel    $00, $13, $37, $19

;	Voice $01
;	$2C
;	$72, $78, $34, $34, 	$1F, $12, $1F, $12, 	$00, $0A, $00, $0A
;	$00, $00, $00, $00, 	$0F, $1F, $0F, $1F, 	$16, $80, $17, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $08, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $00, $0A, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $17, $00, $16

;	Voice $02
;	$2C
;	$74, $74, $34, $34, 	$1F, $12, $1F, $1F, 	$00, $00, $00, $00
;	$00, $01, $00, $01, 	$0F, $3F, $0F, $3F, 	$16, $80, $17, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $01, $00, $01, $00
	smpsVcDecayLevel    $03, $00, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $17, $00, $16

;	Voice $03
;	$04
;	$72, $42, $32, $32, 	$12, $12, $12, $12, 	$00, $08, $00, $08
;	$00, $08, $00, $08, 	$0F, $1F, $0F, $1F, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $04, $07
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $12, $12, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $00, $08, $00
	smpsVcDecayRate2    $08, $00, $08, $00
	smpsVcDecayLevel    $01, $00, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $23

;	Voice $04
;	$2C
;	$74, $74, $34, $34, 	$1F, $12, $1F, $1F, 	$00, $07, $00, $07
;	$00, $07, $00, $07, 	$00, $38, $00, $38, 	$16, $80, $17, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $00, $07, $00
	smpsVcDecayRate2    $07, $00, $07, $00
	smpsVcDecayLevel    $03, $00, $03, $00
	smpsVcReleaseRate   $08, $00, $08, $00
	smpsVcTotalLevel    $00, $17, $00, $16

;	Voice $05
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

;	Voice $06
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

;	Voice $07
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

;	Voice $08
;	$22
;	$0A, $13, $05, $11, 	$03, $12, $12, $11, 	$00, $13, $13, $00
;	$03, $02, $02, $01, 	$1F, $1F, $0F, $0F, 	$1E, $18, $26, $81
	smpsVcAlgorithm     $02
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $01, $00
	smpsVcCoarseFreq    $01, $05, $03, $0A
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $11, $12, $12, $03
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $13, $13, $00
	smpsVcDecayRate2    $01, $02, $02, $03
	smpsVcDecayLevel    $00, $00, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $01, $26, $18, $1E

;	Voice $09
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

;	Voice $0A
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

;	Voice $0B
;	$34
;	$33, $41, $7E, $74, 	$5B, $9F, $5F, $1F, 	$04, $07, $07, $08
;	$00, $00, $00, $00, 	$FF, $FF, $EF, $FF, 	$23, $90, $29, $97
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $04, $03
	smpsVcCoarseFreq    $04, $0E, $01, $03
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $07, $07, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0E, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $17, $29, $10, $23

;	Voice $0C
;	$04
;	$72, $42, $32, $32, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$00, $07, $00, $07, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $04, $07
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $00, $07, $00
	smpsVcTotalLevel    $00, $23, $00, $23

;	Voice $0D
;	$3C
;	$38, $74, $76, $33, 	$10, $10, $10, $10, 	$02, $07, $04, $07
;	$03, $09, $03, $09, 	$2F, $2F, $2F, $2F, 	$1E, $80, $1E, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $03, $06, $04, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $10, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $04, $07, $02
	smpsVcDecayRate2    $09, $03, $09, $03
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $00, $1E

;	Voice $0E
;	$F4
;	$06, $04, $0F, $0E, 	$1F, $1F, $1F, $1F, 	$00, $00, $0B, $0B
;	$00, $00, $05, $08, 	$0F, $0F, $FF, $FF, 	$15, $85, $02, $8A
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $03
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $0E, $0F, $04, $06
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $0B, $00, $00
	smpsVcDecayRate2    $08, $05, $00, $00
	smpsVcDecayLevel    $0F, $0F, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $0A, $02, $05, $15

;	Voice $0F
;	$29
;	$36, $74, $71, $31, 	$04, $04, $05, $1D, 	$12, $0E, $1F, $1F
;	$04, $06, $03, $01, 	$5F, $6F, $0F, $0F, 	$27, $27, $2E, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $01, $01, $04, $06
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $05, $04, $04
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $0E, $12
	smpsVcDecayRate2    $01, $03, $06, $04
	smpsVcDecayLevel    $00, $00, $06, $05
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $2E, $27, $27

;	Voice $10
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

;	Voice $11
;	$3D
;	$01, $01, $01, $01, 	$8E, $52, $14, $4C, 	$08, $08, $0E, $03
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$1B, $80, $80, $9B
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $01, $00, $01, $02
	smpsVcAttackRate    $0C, $14, $12, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $08, $08
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $1B, $00, $00, $1B

;	Voice $12
;	$3D
;	$01, $02, $00, $01, 	$1F, $0E, $0E, $0E, 	$07, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$1F, $0F, $0F, $0F, 	$17, $8D, $8C, $8C
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $00, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $0E, $0E, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $07
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $0C, $0C, $0D, $17

;	Voice $13
;	$3C
;	$31, $52, $50, $30, 	$52, $53, $52, $53, 	$08, $00, $08, $00
;	$04, $00, $04, $00, 	$10, $07, $10, $07, 	$1A, $80, $16, $80
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
	smpsVcReleaseRate   $07, $00, $07, $00
	smpsVcTotalLevel    $00, $16, $00, $1A

;	Voice $14
;	$18
;	$37, $30, $30, $31, 	$9E, $DC, $1C, $9C, 	$0D, $06, $04, $01
;	$08, $0A, $03, $05, 	$BF, $BF, $3F, $2F, 	$32, $22, $14, $80
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
	smpsVcTotalLevel    $00, $14, $22, $32

;	Voice $15
;	$3A
;	$01, $01, $01, $02, 	$8D, $07, $07, $52, 	$09, $00, $00, $03
;	$01, $02, $02, $00, 	$5F, $0F, $0F, $2F, 	$18, $22, $18, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $01, $01
	smpsVcRateScale     $01, $00, $00, $02
	smpsVcAttackRate    $12, $07, $07, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $00, $00, $09
	smpsVcDecayRate2    $00, $02, $02, $01
	smpsVcDecayLevel    $02, $00, $00, $05
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $18, $22, $18

;	Voice $16
;	$2C
;	$74, $74, $34, $34, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $01, $00, $01, 	$0F, $3F, $0F, $3F, 	$16, $80, $17, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $01, $00, $01, $00
	smpsVcDecayLevel    $03, $00, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $17, $00, $16

;	Voice $17
;	$04
;	$37, $72, $77, $49, 	$1F, $1F, $1F, $1F, 	$07, $0A, $07, $0D
;	$00, $00, $00, $00, 	$10, $07, $10, $07, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $07, $03
	smpsVcCoarseFreq    $09, $07, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $07, $0A, $07
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $07, $00, $07, $00
	smpsVcTotalLevel    $00, $23, $00, $23

;	Voice $18
;	$3D
;	$01, $02, $02, $02, 	$14, $0E, $8C, $0E, 	$08, $05, $02, $05
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$1A, $80, $80, $80
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
	smpsVcTotalLevel    $00, $00, $00, $1A

;	Voice $19
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

;	Voice $1A
;	$3A
;	$51, $08, $51, $02, 	$1E, $1E, $1E, $10, 	$1F, $1F, $1F, $0F
;	$00, $00, $00, $02, 	$0F, $0F, $0F, $1F, 	$18, $24, $22, $81
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $00, $05
	smpsVcCoarseFreq    $02, $01, $08, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $1E, $1E, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $1F, $1F, $1F
	smpsVcDecayRate2    $02, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $01, $22, $24, $18

;	Voice $1B
;	$3A
;	$32, $56, $32, $42, 	$8D, $4F, $15, $52, 	$06, $08, $07, $04
;	$02, $00, $00, $00, 	$1F, $1F, $2F, $2F, 	$19, $20, $2A, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $03, $05, $03
	smpsVcCoarseFreq    $02, $02, $06, $02
	smpsVcRateScale     $01, $00, $01, $02
	smpsVcAttackRate    $12, $15, $0F, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $07, $08, $06
	smpsVcDecayRate2    $00, $00, $00, $02
	smpsVcDecayLevel    $02, $02, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $2A, $20, $19

;	Voice $1C
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

;	Voice $1D
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

;	Voice $1E
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $1F
;	$36
;	$0F, $01, $01, $01, 	$1F, $1F, $1F, $1F, 	$12, $11, $0E, $00
;	$00, $0A, $07, $09, 	$FF, $0F, $1F, $0F, 	$18, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0E, $11, $12
	smpsVcDecayRate2    $09, $07, $0A, $00
	smpsVcDecayLevel    $00, $01, $00, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $18

;	Voice $20
;	$3A
;	$03, $19, $01, $53, 	$1F, $DF, $1F, $9F, 	$0C, $02, $0C, $05
;	$04, $04, $04, $07, 	$1F, $FF, $0F, $2F, 	$1D, $36, $1B, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $00, $01, $00
	smpsVcCoarseFreq    $03, $01, $09, $03
	smpsVcRateScale     $02, $00, $03, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0C, $02, $0C
	smpsVcDecayRate2    $07, $04, $04, $04
	smpsVcDecayLevel    $02, $00, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1B, $36, $1D

