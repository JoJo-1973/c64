; ==============================================================================
; FILE:           keyboard.asm
; PROGETTO:       Libreria di Sistema (c64.c64)
; TARGET:         ACME Assembler / MOS 6510 (Commodore 64)
; DESCRIZIONE:    Codici della matrice della tastiera. Con __C128_C64_MODE = 1
;                 aggiunge il supporto per i registri extra usati nella versione
;                 del chip installata sul C128.
; ==============================================================================

KBD_DELETE              = $00   ; Cancella il carattere a sinistra del cursore
KBD_RETURN              = $01   ; A capo (tasto RETURN)
KBD_CURSOR_RIGHT        = $02   ; Sposta il cursore a destra
KBD_F7                  = $03   ; Tasto funzione F7
KBD_F1                  = $04   ; Tasto funzione F1
KBD_F3                  = $05   ; Tasto funzione F3
KBD_F5                  = $06   ; Tasto funzione F5
KBD_CURSOR_DOWN         = $07   ; Sposta il cursore in basso
KBD_DIGIT_3             = $08   ; Tasto 3
KBD_LETTER_W            = $09   ; Tasto W
KBD_LETTER_A            = $0A   ; Tasto A
KBD_DIGIT_4             = $0B   ; Tasto 4
KBD_LETTER_Z            = $0C   ; Tasto Z
KBD_LETTER_S            = $0D   ; Tasto S
KBD_LETTER_E            = $0E   ; Tasto E
KBD_LEFT_SHIFT          = $0F   ; Tasto SHIFT sinistro
KBD_DIGIT_5             = $10   ; Tasto 5
KBD_LETTER_R            = $11   ; Tasto R
KBD_LETTER_D            = $12   ; Tasto D
KBD_DIGIT_6             = $13   ; Tasto 6
KBD_LETTER_C            = $14   ; Tasto C
KBD_LETTER_F            = $15   ; Tasto F
KBD_LETTER_T            = $16   ; Tasto T
KBD_LETTER_X            = $17   ; Tasto X
KBD_DIGIT_7             = $18   ; Tasto 7
KBD_LETTER_Y            = $19   ; Tasto Y
KBD_LETTER_G            = $1A   ; Tasto G
KBD_DIGIT_8             = $1B   ; Tasto 8
KBD_LETTER_B            = $1C   ; Tasto B
KBD_LETTER_H            = $1D   ; Tasto H
KBD_LETTER_U            = $1E   ; Tasto U
KBD_LETTER_V            = $1F   ; Tasto V
KBD_DIGIT_9             = $20   ; Tasto 9
KBD_LETTER_I            = $21   ; Tasto I
KBD_LETTER_J            = $22   ; Tasto J
KBD_DIGIT_0             = $23   ; Tasto 0
KBD_LETTER_M            = $24   ; Tasto M
KBD_LETTER_K            = $25   ; Tasto K
KBD_LETTER_O            = $26   ; Tasto O
KBD_LETTER_N            = $27   ; Tasto N
KBD_PLUS                = $28   ; Tasto più
KBD_LETTER_P            = $29   ; Tasto P
KBD_LETTER_L            = $2A   ; Tasto L
KBD_MINUS               = $2B   ; Tasto meno
KBD_FULL_STOP           = $2C   ; Tasto punto
KBD_COLON               = $2D   ; Tasto due punti
KBD_AT_SIGN             = $2E   ; Tasto chiocciola
KBD_COMMA               = $2F   ; Tasto virgola
KBD_POUND               = $30   ; Tasto sterlina; U+00A3 POUND SIGN
KBD_ASTERISK            = $31   ; Tasto asterisco
KBD_SEMICOLON           = $32   ; Tasto punto e virgola
KBD_HOME                = $33   ; Porta il cursore in alto a sinistra
KBD_RIGHT_SHIFT         = $34   ; Tasto SHIFT destro
KBD_EQUALS              = $35   ; Tasto uguale
KBD_UP_ARROW            = $36   ; Tasto freccia in su; U+2191 UPWARDS ARROW
KBD_SLASH               = $37   ; Tasto barra
KBD_DIGIT_1             = $38   ; Tasto 1
KBD_LEFT_ARROW          = $39   ; Tasto freccia a sinistra; U+2190 LEFTWARDS ARROW
KBD_CONTROL             = $3A   ; Tasto CTRL
KBD_DIGIT_2             = $3B   ; Tasto 2
KBD_SPACE               = $3C   ; Barra spaziatrice
KBD_COMMODORE           = $3D   ; Tasto Commodore
KBD_LETTER_Q            = $3E   ; Tasto Q
KBD_STOP                = $3F   ; Tasto RUN/STOP

!if (__C128_C64_MODE = 1) {     ; Codici extra del C128.
  KBD_HELP              = $40   ; Tasto HELP
  KBD_KEYPAD_DIGIT_8    = $41   ; Tasto 8 del tastierino numerico
  KBD_KEYPAD_DIGIT_5    = $42   ; Tasto 5 del tastierino numerico
  KBD_TAB               = $43   ; Tasto TAB
  KBD_KEYPAD_DIGIT_2    = $44   ; Tasto 2 del tastierino numerico
  KBD_KEYPAD_DIGIT_4    = $45   ; Tasto 4 del tastierino numerico
  KBD_KEYPAD_DIGIT_7    = $46   ; Tasto 7 del tastierino numerico
  KBD_KEYPAD_DIGIT_1    = $47   ; Tasto 1 del tastierino numerico
  KBD_ESC               = $48   ; Tasto ESC
  KBD_KEYPAD_PLUS       = $49   ; Tasto più del tastierino numerico
  KBD_KEYPAD_MINUS      = $4A   ; Tasto meno del tastierino numerico
  KBD_LINE_FEED         = $4B   ; Tasto LINE FEED
  KBD_ENTER             = $4C   ; Tasto ENTER del tastierino numerico
  KBD_KEYPAD_DIGIT_6    = $4D   ; Tasto 6 del tastierino numerico
  KBD_KEYPAD_DIGIT_9    = $4E   ; Tasto 9 del tastierino numerico
  KBD_KEYPAD_DIGIT_3    = $4F   ; Tasto 3 del tastierino numerico
  KBD_ALT               = $50   ; Tasto ALT
  KBD_KEYPAD_DIGIT_0    = $51   ; Tasto 0 del tastierino numerico
  KBD_KEYPAD_FULL_STOP  = $52   ; Tasto punto del tastierino numerico
  KBD_UP                = $53   ; Tasto cursore su
  KBD_DOWN              = $54   ; Tasto cursore giù
  KBD_LEFT              = $55   ; Tasto cursore a sinistra
  KBD_RIGHT             = $56   ; Tasto cursore a destra
  KBD_NO_SCROLL         = $57   ; Tasto NO SCROLL
  KBD_NO_KEY            = $58   ; Nessun tasto premuto
} else {                        ; Sul C64 i codici arrivano fino a $3F.
  KBD_NO_KEY            = $40   ; Nessun tasto premuto
}
