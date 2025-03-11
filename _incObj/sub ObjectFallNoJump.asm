; ---------------------------------------------------------------------------
; Subroutine to	make an	object fall downwards, increasingly fast
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


ObjectFallNoJump:
		move.l	obX(a0),d2
		move.l	obY(a0),d3
		move.w	obVelX(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d2
;		cmpi.b	#1,obID(a0)
;		beq.s	ObjectFallSonic
		move.w	obY(a0),d0
		addi.w	#4,obY(a0)	; increase vertical speed
;		ext.l	d0
;		asl.l	#8,d0
;		add.l	d0,d3
		move.l	d2,obX(a0)
;		move.l	d3,obY(a0)
		rts	

; End of function ObjectFall

JumpFallSonic:
        movem.w    obVelX(a0),d0-d1        ; Get speed
        
        asl.l    #8,d0                ; Apply X speed
        add.l    d0,obX(a0)
        
        move.w    #$300,d0            ; Y movement speed
        tst.w    d1                ; Are we falling?
        bpl.s    .SetYSpeed            ; If so, branch
        neg.w    d0                ; Make Y movement go up
        
.SetYSpeed:
        ext.l    d0                ; Apply Y speed
        asl.l    #8,d0
        add.l    d0,obY(a0)
        addi.w    #$38,obVelY(a0)            ; Apply gravity
        rts