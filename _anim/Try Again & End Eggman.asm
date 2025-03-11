; ---------------------------------------------------------------------------
; Animation script - Eggman on the "TRY AGAIN" and "END" screens
; ---------------------------------------------------------------------------
Ani_EEgg:	dc.w .tryagain1-Ani_EEgg
		dc.w .tryagain2-Ani_EEgg
		dc.w .end-Ani_EEgg
.tryagain1:	dc.b 5,	0, afEnd
.tryagain2:	dc.b 5,	0, afEnd
.end:		dc.b 7,	4, afEnd
		even