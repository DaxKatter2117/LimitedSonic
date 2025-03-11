; ---------------------------------------------------------------------------
; Animation script - Eggman (SBZ2)
; ---------------------------------------------------------------------------
Ani_SEgg:	dc.w .stand-Ani_SEgg
		dc.w .laugh-Ani_SEgg
		dc.w .jump1-Ani_SEgg
		dc.w .intube-Ani_SEgg
		dc.w .running-Ani_SEgg
		dc.w .jump2-Ani_SEgg
		dc.w .starjump-Ani_SEgg
.stand:		dc.b $7E, 1, afEnd
		even
.laugh:		dc.b 6,	1, afEnd
.jump1:		dc.b $E, 1, afEnd
.intube:	dc.b 0,	1, afEnd
.running:	dc.b 6,	1, afEnd
.jump2:		dc.b $F, 1, afEnd
		even
.starjump:	dc.b $7E, 1, afEnd
		even