; ---------------------------------------------------------------------------
; Object 8A - "SONIC TEAM PRESENTS" and	credits
; ---------------------------------------------------------------------------

GoodCredits:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	Cred2_Index(pc,d0.w),d1
		jmp	Cred2_Index(pc,d1.w)
; ===========================================================================
Cred2_Index:	dc.w Cred2_Main-Cred2_Index
		dc.w Cred2_Display-Cred2_Index
; ===========================================================================

Cred2_Main:	; Routine 0
		addq.b	#2,obRoutine(a0)
		move.w	#$120,obX(a0)
		move.w	#$F0,obScreenY(a0)
		move.l	#Map_Cred2,obMap(a0)
		move.w	#make_art_tile(ArtTile_Credits_Font,0,0),obGfx(a0)
		move.w	(v_creditsnum).w,d0 ; load credits index number
		move.b	d0,obFrame(a0)	; display appropriate sprite
		move.b	#0,obRender(a0)
		move.b	#0,obPriority(a0)

		cmpi.b	#id_Title,(v_gamemode).w ; is the mode #4 (title screen)?
		bne.s	Cred2_Display	; if not, branch

		move.w	#make_art_tile(ArtTile_Sonic_Team_Font,0,0),obGfx(a0)
		move.b	#$A,obFrame(a0)	; display "SONIC TEAM PRESENTS"
		tst.b	(f_creditscheat).w ; is hidden credits cheat on?
		beq.s	Cred2_Display	; if not, branch
		cmpi.b	#btnABC+btnDn,(v_jpadhold1).w ; is A+B+C+Down being pressed? ($72)
		bne.s	Cred2_Display	; if not, branch
		move.w	#cWhite,(v_pal_dry_dup+$40).w ; 3rd palette, 1st entry = white
		move.w	#$880,(v_pal_dry_dup+$42).w ; 3rd palette, 2nd entry = cyan
		jmp	(DeleteObject).l
; ===========================================================================

Cred2_Display:	; Routine 2
		jmp	DisplaySprite