; ---------------------------------------------------------------------------
; Animation script - electrocution orbs (SBZ)
; ---------------------------------------------------------------------------
Ani_Elec:	dc.w byte_161CC-Ani_Elec
		dc.w byte_161D0-Ani_Elec
byte_161CC:	dc.b 7,	0, afEnd
		even
byte_161D0:	dc.b 0,	0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, afChange, 0
		even