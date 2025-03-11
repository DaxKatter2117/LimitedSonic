; ---------------------------------------------------------------------------
; Animation script - energy balls (FZ)
; ---------------------------------------------------------------------------
Ani_Plasma:	dc.w .full-Ani_Plasma
		dc.w .short-Ani_Plasma
.full:		dc.b 1,	$A, $A, $A, $A, $A, $A, $A,	$A, $A, $A, $A, $A, $A, $A
		dc.b $A, $A, $A, $A, $A, $A, $A, $A, $A, $A, $A, $A, $A, $A, $A
		dc.b $A, 5, afEnd
		even
.short:		dc.b 0,	5, 5, 5, 5, 5, 5, 5, 5,	afEnd
		even