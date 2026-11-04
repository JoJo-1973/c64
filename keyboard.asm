; ==============================================================================
; FILE:           keyboard.asm
; PROGETTO:       Libreria C64 (c64.c64)
; TARGET:         ACME Assembler / MOS 6510 (Commodore 64)
; DESCRIZIONE:    Codici della matrice della tastiera. Con __C128_C64_MODE = 1
;                 aggiunge il supporto per i registri extra usati nella
;                 versione del chip installata sul C128.
; ==============================================================================

KBD_INST_DEL        = $00
KBD_RETURN          = $01
KBD_CURSOR_RIGHT    = $02
KBD_F7              = $03
KBD_F1              = $04
KBD_F3              = $05
KBD_F5              = $06
KBD_CURSOR_DOWN     = $07
KBD_3               = $08
KBD_W               = $09
KBD_A               = $0A
KBD_4               = $0B
KBD_Z               = $0C
KBD_S               = $0D
KBD_E               = $0E
KBD_LEFT_SHIFT      = $0F
KBD_5               = $10
KBD_R               = $11
KBD_D               = $12
KBD_6               = $13
KBD_C               = $14
KBD_F               = $15
KBD_T               = $16
KBD_X               = $17
KBD_7               = $18
KBD_Y               = $19
KBD_G               = $1A
KBD_8               = $1B
KBD_B               = $1C
KBD_H               = $1D
KBD_U               = $1E
KBD_V               = $1F
KBD_9               = $20
KBD_I               = $21
KBD_J               = $22
KBD_0               = $23
KBD_M               = $24
KBD_K               = $25
KBD_O               = $26
KBD_N               = $27
KBD_PLUS            = $28
KBD_P               = $29
KBD_L               = $2A
KBD_MINUS           = $2B
KBD_FULL_STOP       = $2C
KBD_COLON           = $2D
KBD_AT_SIGN         = $2E
KBD_COMMA           = $2F
KBD_POUND           = $30
KBD_ASTERISK        = $31
KBD_SEMICOLON       = $32
KBD_CLR_HOME        = $33
KBD_RIGHT_SHIFT     = $34
KBD_EQUALS          = $35
KBD_UP_ARROW        = $36
KBD_SLASH           = $37
KBD_1               = $38
KBD_LEFT_ARROW      = $39
KBD_CONTROL         = $3A
KBD_2               = $3B
KBD_SPACE           = $3C
KBD_COMMODORE       = $3D
KBD_Q               = $3E
KBD_RUN_STOP        = $3F
KBD_NO_KEY          = $40

!if (__C128_C64_MODE = 1) {     ; Codici extra del C128
  KBD_HELP          = $40
  KBD_KEYPAD_8      = $41
  KBD_KEYPAD_5      = $42
  KBD_TAB           = $43
  KBD_KEYPAD_2      = $44
  KBD_KEYPAD_4      = $45
  KBD_KEYPAD_7      = $46
  KBD_KEYPAD_1      = $47
  KBD_ESC           = $48
  KBD_KEYPAD_PLUS   = $49
  KBD_KEYPAD_MINUS  = $4A
  KBD_LINE_FEED     = $4B
  KBD_ENTER         = $4C
  KBD_KEYPAD_6      = $4D
  KBD_KEYPAD_9      = $4E
  KBD_KEYPAD_3      = $4F
  KBD_ALT           = $50
  KBD_KEYPAD_0      = $51
  KBD_KEYPAD_DOT    = $52
  KBD_UP            = $53
  KBD_DOWN          = $54
  KBD_LEFT          = $55
  KBD_RIGHT         = $56
  KBD_NO_SCROLL     = $57
  KBD_NO_KEY_EXTRA  = $58
}
