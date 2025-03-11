; ---------------------------------------------------------------------------
; Animation script - Sonic
; ---------------------------------------------------------------------------
Ani_SonicNormNorm:

ptr_Walk_Norm:	    dc.w SonAniNorm_Walk-Ani_SonicNorm
ptr_Run_Norm:	    dc.w SonAniNorm_Run-Ani_SonicNorm
ptr_Roll_Norm:	    dc.w SonAniNorm_Roll-Ani_SonicNorm
ptr_Roll2_Norm:	    dc.w SonAniNorm_Roll2-Ani_SonicNorm
ptr_Push_Norm:	    dc.w SonAniNorm_Push-Ani_SonicNorm
ptr_Wait_Norm:	    dc.w SonAniNorm_Wait-Ani_SonicNorm
ptr_Balance_Norm:	dc.w SonAniNorm_Balance-Ani_SonicNorm
ptr_LookUp_Norm:	dc.w SonAniNorm_LookUp-Ani_SonicNorm
ptr_Duck_Norm:	    dc.w SonAniNorm_Duck-Ani_SonicNorm
ptr_Warp1_Norm:	    dc.w SonAniNorm_Warp1-Ani_SonicNorm
ptr_Warp2_Norm:	    dc.w SonAniNorm_Warp2-Ani_SonicNorm
ptr_Warp3_Norm:	    dc.w SonAniNorm_Warp3-Ani_SonicNorm
ptr_Warp4_Norm:	    dc.w SonAniNorm_Warp4-Ani_SonicNorm
ptr_Stop_Norm:	    dc.w SonAniNorm_Stop-Ani_SonicNorm
ptr_Float1_Norm:	dc.w SonAniNorm_Float1-Ani_SonicNorm
ptr_Float2_Norm:	dc.w SonAniNorm_Float2-Ani_SonicNorm
ptr_Spring_Norm:	dc.w SonAniNorm_Spring-Ani_SonicNorm
ptr_Hang_Norm:	    dc.w SonAniNorm_Hang-Ani_SonicNorm
ptr_Leap1_Norm:	    dc.w SonAniNorm_Leap1-Ani_SonicNorm
ptr_Leap2_Norm:	    dc.w SonAniNorm_Leap2-Ani_SonicNorm
ptr_Surf_Norm:	    dc.w SonAniNorm_Surf-Ani_SonicNorm
ptr_GetAir_Norm:	dc.w SonAniNorm_GetAir-Ani_SonicNorm
ptr_Burnt_Norm:	    dc.w SonAniNorm_Burnt-Ani_SonicNorm
ptr_Drown_Norm:	    dc.w SonAniNorm_Drown-Ani_SonicNorm
ptr_Death_Norm:	    dc.w SonAniNorm_Death-Ani_SonicNorm
ptr_Shrink_Norm:	dc.w SonAniNorm_Shrink-Ani_SonicNorm
ptr_Hurt_Norm:	    dc.w SonAniNorm_Hurt-Ani_SonicNorm
ptr_WaterSlide_Norm:	dc.w SonAniNorm_WaterSlide-Ani_SonicNorm
ptr_Null_Norm:	    dc.w SonAniNorm_Null-Ani_SonicNorm
ptr_Float3_Norm:	dc.w SonAniNorm_Float3-Ani_SonicNorm
ptr_Float4_Norm:	dc.w SonAniNorm_Float4-Ani_SonicNorm

SonAniNorm_Walk:	dc.b $FF, fr_Walk13, fr_Walk14,	fr_Walk15, fr_Walk16, fr_Walk11, fr_Walk12, afEnd
		even
SonAniNorm_Run:	dc.b $FF,  fr_Run11,  fr_Run12,  fr_Run13,  fr_Run14,     afEnd,     afEnd, afEnd
		even
SonAniNorm_Roll:	dc.b $FE,  fr_Roll1,  fr_Roll2,  fr_Roll3,  fr_Roll4,  fr_Roll5,     afEnd, afEnd
		even
SonAniNorm_Roll2:	dc.b $FE,  fr_Roll1,  fr_Roll2,  fr_Roll5,  fr_Roll3,  fr_Roll4,  fr_Roll5, afEnd
		even
SonAniNorm_Push:	dc.b $FD,  fr_Push1,  fr_Push2,  fr_Push3,  fr_Push4,     afEnd,     afEnd, afEnd
		even
SonAniNorm_Wait:	dc.b $17, fr_Stand, fr_Stand, fr_Stand, fr_Stand, fr_Stand, fr_Stand, fr_Stand, fr_Stand, fr_Stand
		dc.b fr_Stand, fr_Stand, fr_Stand, fr_Wait2, fr_Wait1, fr_Wait1, fr_Wait1, fr_Wait2, fr_Wait3, afBack, 2
		even
SonAniNorm_Balance:	dc.b $1F, fr_Balance1, fr_Balance2, afEnd
		even
SonAniNorm_LookUp:	dc.b $3F, fr_LookUp, afEnd
		even
SonAniNorm_Duck:	dc.b $3F, fr_Duck, afEnd
		even
SonAniNorm_Warp1:	dc.b $3F, fr_Warp1, afEnd
		even
SonAniNorm_Warp2:	dc.b $3F, fr_Warp2, afEnd
		even
SonAniNorm_Warp3:	dc.b $3F, fr_Warp3, afEnd
		even
SonAniNorm_Warp4:	dc.b $3F, fr_Warp4, afEnd
		even
SonAniNorm_Stop:	dc.b 7,	fr_Stop1, fr_Stop2, afEnd
		even
SonAniNorm_Float1:	dc.b 7,	fr_Float1, fr_Float4, afEnd
		even
SonAniNorm_Float2:	dc.b 7,	fr_Float1, fr_Float2, fr_Float5, fr_Float3, fr_Float6, afEnd
		even
SonAniNorm_Spring:	dc.b $2F, fr_Spring, afChange, id_Walk
		even
SonAniNorm_Hang:	dc.b 4,	fr_Hang1, fr_Hang2, afEnd
		even
SonAniNorm_Leap1:	dc.b $F, fr_Leap1, fr_Leap1, fr_Leap1,	afBack, 1
		even
SonAniNorm_Leap2:	dc.b $F, fr_Leap1, fr_Leap2, afBack, 1
		even
SonAniNorm_Surf:	dc.b $3F, fr_Surf, afEnd
		even
SonAniNorm_GetAir:	dc.b $B, fr_GetAir, fr_GetAir, fr_Walk15, fr_Walk16, afChange, id_Walk
		even
SonAniNorm_Burnt:	dc.b $20, fr_Burnt, afEnd
		even
SonAniNorm_Drown:	dc.b $2F, fr_Drown, afEnd
		even
SonAniNorm_Death:	dc.b 3,	fr_Death, afEnd
		even
SonAniNorm_Shrink:	dc.b 3,	fr_Shrink1, fr_Shrink2, fr_Shrink3, fr_Shrink4, fr_Shrink5, fr_Null, afBack, 1
		even
SonAniNorm_Hurt:	dc.b 3,	fr_Injury, afEnd
		even
SonAniNorm_WaterSlide:
		dc.b 7, fr_Injury, fr_WaterSlide, afEnd
		even
SonAniNorm_Null:	dc.b $77, fr_Null, afChange, id_Walk
		even
SonAniNorm_Float3:	dc.b 3,	fr_Float1, fr_Float2, fr_Float5, fr_Float3, fr_Float6, afEnd
		even
SonAniNorm_Float4:	dc.b 3,	fr_Float1, afChange, id_Walk
		even

id_Walk_Norm:	equ (ptr_Walk_Norm-Ani_SonicNorm)/2	; 0
id_Run_Norm:		equ (ptr_Run_Norm-Ani_SonicNorm)/2	; 1
id_Roll_Norm:	equ (ptr_Roll_Norm-Ani_SonicNorm)/2	; 2
id_Roll2_Norm:	equ (ptr_Roll2_Norm-Ani_SonicNorm)/2	; 3
id_Push_Norm:	equ (ptr_Push_Norm-Ani_SonicNorm)/2	; 4
id_Wait_Norm:	equ (ptr_Wait_Norm-Ani_SonicNorm)/2	; 5
id_Balance_Norm:	equ (ptr_Balance_Norm-Ani_SonicNorm)/2	; 6
id_LookUp_Norm:	equ (ptr_LookUp_Norm-Ani_SonicNorm)/2	; 7
id_Duck_Norm:	equ (ptr_Duck_Norm-Ani_SonicNorm)/2	; 8
id_Warp1_Norm:	equ (ptr_Warp1_Norm-Ani_SonicNorm)/2	; 9
id_Warp2_Norm:	equ (ptr_Warp2_Norm-Ani_SonicNorm)/2	; $A
id_Warp3_Norm:	equ (ptr_Warp3_Norm-Ani_SonicNorm)/2	; $B
id_Warp4_Norm:	equ (ptr_Warp4_Norm-Ani_SonicNorm)/2	; $C
id_Stop_Norm:	equ (ptr_Stop_Norm-Ani_SonicNorm)/2	; $D
id_Float1_Norm:	equ (ptr_Float1_Norm-Ani_SonicNorm)/2	; $E
id_Float2_Norm:	equ (ptr_Float2_Norm-Ani_SonicNorm)/2	; $F
id_Spring_Norm:	equ (ptr_Spring_Norm-Ani_SonicNorm)/2	; $10
id_Hang_Norm:	equ (ptr_Hang_Norm-Ani_SonicNorm)/2	; $11
id_Leap1_Norm:	equ (ptr_Leap1_Norm-Ani_SonicNorm)/2	; $12
id_Leap2_Norm:	equ (ptr_Leap2_Norm-Ani_SonicNorm)/2	; $13
id_Surf_Norm:	equ (ptr_Surf_Norm-Ani_SonicNorm)/2	; $14
id_GetAir_Norm:	equ (ptr_GetAir_Norm-Ani_SonicNorm)/2	; $15
id_Burnt_Norm:	equ (ptr_Burnt_Norm-Ani_SonicNorm)/2	; $16
id_Drown_Norm:	equ (ptr_Drown_Norm-Ani_SonicNorm)/2	; $17
id_Death_Norm:	equ (ptr_Death_Norm-Ani_SonicNorm)/2	; $18
id_Shrink_Norm:	equ (ptr_Shrink_Norm-Ani_SonicNorm)/2	; $19
id_Hurt_Norm:	equ (ptr_Hurt_Norm-Ani_SonicNorm)/2	; $1A
id_WaterSlide_Norm:	equ (ptr_WaterSlide_Norm-Ani_SonicNorm)/2 ; $1B
id_Null_Norm:	equ (ptr_Null_Norm-Ani_SonicNorm)/2	; $1C
id_Float3_Norm:	equ (ptr_Float3_Norm-Ani_SonicNorm)/2	; $1D
id_Float4_Norm:	equ (ptr_Float4_Norm-Ani_SonicNorm)/2	; $1E
