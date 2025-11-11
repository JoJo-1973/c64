; Codici della matrice della tastiera
;
; Opzioni: C128_C64_MODE = 1    Aggiunge il supporto per i registri extra usati nella versione del chip installata sul C128

!ifndef __C64_KEYBOARD__ {
__C64_KEYBOARD__  = 1

KBD_INST_DEL      = 0
KBD_RETURN        = 1
KBD_CURSOR_RIGHT  = 2
KBD_F7            = 3
KBD_F1            = 4
KBD_F3            = 5
KBD_F5            = 6
KBD_CURSOR_DOWN   = 7
KBD_3             = 8
KBD_W             = 9
KBD_A             = 10
KBD_4             = 11
KBD_Z             = 12
KBD_S             = 13
KBD_E             = 14
KBD_LEFT_SHIFT    = 15
KBD_5             = 16
KBD_R             = 17
KBD_D             = 18
KBD_6             = 19
KBD_C             = 20
KBD_F             = 21
KBD_T             = 22
KBD_X             = 23
KBD_7             = 24
KBD_Y             = 25
KBD_G             = 26
KBD_8             = 27
KBD_B             = 28
KBD_H             = 29
KBD_U             = 30
KBD_V             = 31
KBD_9             = 32
KBD_I             = 33
KBD_J             = 34
KBD_0             = 35
KBD_M             = 36
KBD_K             = 37
KBD_O             = 38
KBD_N             = 39
KBD_PLUS          = 40
KBD_P             = 41
KBD_L             = 42
KBD_MINUS         = 43
KBD_FULL_STOP     = 44
KBD_COLON         = 45
KBD_AT_SIGN       = 46
KBD_COMMA         = 47
KBD_POUND         = 48
KBD_ASTERISK      = 49
KBD_SEMICOLON     = 50
KBD_CLR_HOME      = 51
KBD_RIGHT_SHIFT   = 52
KBD_EQUALS        = 53
KBD_UP_ARROW      = 54
KBD_SLASH         = 55
KBD_1             = 56
KBD_LEFT_ARROW    = 57
KBD_CONTROL       = 58
KBD_2             = 59
KBD_SPACE         = 60
KBD_COMMODORE     = 61
KBD_Q             = 62
KBD_RUN_STOP      = 63
KBD_NO_KEY        = 64

!ifdef C128_C64_MODE {
  KBD_HELP        = 64
  KBD_KEYPAD_8    = 65
  KBD_KEYPAD_5    = 66
  KBD_TAB         = 67
  KBD_KEYPAD_2    = 68
  KBD_KEYPAD_4    = 69
  KBD_KEYPAD_7    = 70
  KBD_KEYPAD_1    = 71
  KBD_ESC         = 72
  KBD_KEYPAD_PLUS = 73
  KBD_KEYPAD_MINUS= 74
  KBD_LINE_FEED   = 75
  KBD_ENTER       = 76
  KBD_KEYPAD_6    = 77
  KBD_KEYPAD_9    = 78
  KBD_KEYPAD_3    = 79
  KBD_ALT         = 80
  KBD_KEYPAD_0    = 81
  KBD_KEYPAD_DOT  = 82
  KBD_UP          = 83
  KBD_DOWN        = 84
  KBD_LEFT        = 85
  KBD_RIGHT       = 86
  KBD_NO_SCROLL   = 87
  KBD_NO_KEY_EXTRA= 88
}

}