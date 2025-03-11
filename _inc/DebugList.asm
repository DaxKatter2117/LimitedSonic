; ---------------------------------------------------------------------------
; Debug	mode item lists
; ---------------------------------------------------------------------------
DebugList:
	dc.w .GHZ-DebugList
	dc.w .LZ-DebugList
	dc.w .MZ-DebugList
	dc.w .SLZ-DebugList
	dc.w .SYZ-DebugList
	dc.w .SBZ-DebugList
	zonewarning DebugList,2
	dc.w .Ending-DebugList

dbug:	macro map,object,subtype,frame,vram
	dc.l map+(object<<24)
	dc.b subtype,frame
	dc.w vram
	endm

.GHZ:
	dc.w (.GHZend-.GHZ-2)/8

;		mappings	object		subtype	frame	VRAM setting
.GHZend:

.LZ:
	dc.w (.LZend-.LZ-2)/8

;		mappings	object		subtype	frame	VRAM setting
.LZend:

.MZ:
	dc.w (.MZend-.MZ-2)/8

;		mappings	object		subtype	frame	VRAM setting
.MZend:

.SLZ:
	dc.w (.SLZend-.SLZ-2)/8

;		mappings	object		subtype	frame	VRAM setting
.SLZend:

.SYZ:
	dc.w (.SYZend-.SYZ-2)/8

;		mappings	object		subtype	frame	VRAM setting
.SYZend:

.SBZ:
	dc.w (.SBZend-.SBZ-2)/8

;		mappings	object		subtype	frame	VRAM setting
.SBZend:

.Ending:
	dc.w (.Endingend-.Ending-2)/8

;		mappings	object		subtype	frame	VRAM setting
.Endingend:

	even