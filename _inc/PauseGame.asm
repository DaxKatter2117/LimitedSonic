; ---------------------------------------------------------------------------
; Subroutine to	pause the game
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


PauseGame:
		nop	
		tst.b	(v_lives).w	; do you have any lives	left?
		beq.w	Unpause		; if not, branch
		tst.w	(f_pause).w	; is game already paused?
		bne.w	Pause_StopGame	; if yes, branch
		btst	#bitStart,(v_jpadpress1).w ; is Start button pressed?
		beq.w	Pause_DoNothing	; if not, branch

Pause_StopGame:
		move.w	#1,(f_pause).w	; freeze time
		move.b	#1,(v_snddriver_ram+f_pausemusic).w ; pause music

Pause_Loop:
		move.b	#$10,(v_vbla_routine).w
		bsr.w	WaitForVBla
;		tst.b	(f_slomocheat).w ; is slow-motion cheat on?
;		beq.s	Pause_ChkStart	; if not, branch
		cmpi.b	#id_Special,(v_gamemode).w ; is game mode $10 (special stage)?
		bne.s	.islevel	; if not, branch
		btst	#bitA,(v_jpadpress1).w
		beq.w	Pause_ChkStart
		move.b	#0,(v_lastspecial).w ; clear special stage number
		move.b	#0,(v_emeralds).w ; clear emeralds
		move.l	#0,(v_emldlist).w ; clear emeralds
		move.l	#0,(v_emldlist+4).w ; clear emeralds
		move.w	#1,(f_demo).w
		move.w	#0,(v_demolength).w
		bra.w	Pause_EndMusic
		jmp	SS_ToSegaScreen
		
.islevel:
		btst	#bitA,(v_jpadpress1).w ; is button A pressed?
		beq.s	Pause_ChkB	; if not, branch
		move.b	#0,(v_lastspecial).w ; clear special stage number
		move.b	#0,(v_emeralds).w ; clear emeralds
		move.l	#0,(v_emldlist).w ; clear emeralds
		move.l	#0,(v_emldlist+4).w ; clear emeralds
		move.b	#id_Sega,(v_gamemode).w ; set game mode to 4 (title screen)
		nop	
		bra.s	Pause_EndMusic
; ===========================================================================

Pause_ChkB:
		btst	#bitB,(v_jpadhold1).w ; is button B pressed?
		bne.s	Pause_Restart	; if yes, branch
;		btst	#bitC,(v_jpadpress1).w ; is button C pressed?
;		bne.s	Pause_SlowMo	; if yes, branch

Pause_ChkStart:
		btst	#bitStart,(v_jpadpress1).w ; is Start button pressed?
		beq.w	Pause_Loop	; if not, branch

Pause_EndMusic:
		move.b	#$80,(v_snddriver_ram+f_pausemusic).w	; unpause the music

Unpause:
		move.w	#0,(f_pause).w	; unpause the game

Pause_DoNothing:
		rts	
; ===========================================================================

Pause_Restart:
		move.b	#$80,(v_snddriver_ram+f_pausemusic).w	; unpause the music
		move.w	#1,(f_restart).w
		rts	
; End of function PauseGame
