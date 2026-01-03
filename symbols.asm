; Mappa di memoria del Commodore 64 (aggiornata in corso d'opera)

!cpu 6510

; Pagina 0
D6510             = $00         ; Registro direzione dati del chip 6510
R6510             = $01         ; Registro porte dati del chip 6510
TEMP_1            = $02         ; Locazione non usata #1

; Pagina 0 - BASIC
VERCK             = $0A         ; Flag usato dal BASIC per differenziare LOAD (0) da VERIFY (1)
VALTYP            = $0D         ; Flag usato dal BASIC per determinare se la variabile è stringa ($FF) o numerica (0)
CHANNL            = $13         ; Canale di I/O attualmente in uso
TEMPST            = $19         ; Stack per i descrittori delle stringhe temporanee (da TEMPST+0 a TEMPST+8)
INDEX             = $22         ; Puntatore temporaneo per il BASIC #1
INDEX2            = $24         ; Puntatore temporaneo per il BASIC #2
RESHO             = $26         ; Area di lavoro per moltiplicazioni in virgola mobile (da RESHO+0 a RESHO+4)
TXTTAB            = $2B         ; Puntatore all'inizio dell'area BASIC
VARTAB            = $2D         ; Puntatore all'inizio dell'area Variabili
ARYTAB            = $2F         ; Puntatore all'inizio dell'area Matrici
STREND            = $31         ; Puntatore alla fine dell'area Matrici (+1) ed inizio della memoria libera
FRETOP            = $33         ; Puntatore alla fine dell'area Stringhe
MEMSIZ            = $37         ; Puntatore alla fine dell'area BASIC
JMPER             = $54         ; Istruzione JMP usata dalla routine di valutazione delle funzioni matematiche
NUMWRK            = $57         ; Area di lavoro utilizzata da varie routines numeriche del BASIC (da NUMWRK+0 a NUMWRK+10)

FAC               = $61         ; Accumulatore in virgola mobile #1
FACEXP            = FAC         ; Accumulatore in virgola mobile #1: Esponente
FACHO             = FAC+$01     ; Accumulatore in virgola mobile #1: Mantissa (byte più significativo)
FACMOH            = FAC+$02     ; Accumulatore in virgola mobile #1: Mantissa (secondo byte più significativo)
FACMO             = FAC+$03     ; Accumulatore in virgola mobile #1: Mantissa (terzo byte più significativo)
FACLO             = FAC+$04     ; Accumulatore in virgola mobile #1: Mantissa (byte meno significativo)
FACSGN            = FAC+$05     ; Accumulatore in virgola mobile #1: Segno

ARG               = $69         ; Accumulatore in virgola mobile #2
ARGEXP            = ARG         ; Accumulatore in virgola mobile #2: Esponente
ARGHO             = ARG+$01     ; Accumulatore in virgola mobile #2: Mantissa (byte più significativo)
ARGMOH            = ARG+$02     ; Accumulatore in virgola mobile #2: Mantissa (secondo byte più significativo)
ARGMO             = ARG+$03     ; Accumulatore in virgola mobile #2: Mantissa (terzo byte più significativo)
ARGLO             = ARG+$04     ; Accumulatore in virgola mobile #2: Mantissa (byte meno significativo)
ARGSGN            = ARG+$05     ; Accumulatore in virgola mobile #2: Segno

ARISGN            = $6F         ; Comparazione dei segni degli accumulatori in virgola mobile: $00=segni uguali, $FF=segni differenti
FACOV             = $70         ; Byte di precisione extra per l'accumulatore in virgola mobile #1

CHRGET            = $73         ; Leggi il prossimo carattere nel testo di un programma BASIC
CHRGOT            = $79         ; Rileggi l'ultimo carattere nel testo di un programma BASIC
TXTPTR            = $7A         ; Puntatore al carattere attualmente letto
RNDX              = $8B         ; Seme del generatore di numeri casuali del BASIC (da RNDX+0 a RNDX+4)

; Pagina 0 - KERNAL
STATUS            = $90         ; Stato I/O del Kernal
STKEY             = $91         ; Flag: Premuto tasto STOP?
TIME              = $A0         ; Orologio jiffy (da TIME+0 a TIME+2)
LA                = $B8         ; Numero di file in uso
SA                = $B9         ; Indirizzo secondario I/O in uso
FA                = $BA         ; Numero di dispositivo I/O in uso
LSTX              = $C5         ; Ultimo tasto premuto (tastiera hardware)
NDX               = $C6         ; Numero di caratteri nel buffer della tastiera
RVS               = $C7         ; Attivazione modalità REVERSE
SFDX              = $CB         ; Tasto attualmente premuto (tastiera hardware)
BLNSW             = $CC         ; Abilita il lampeggio del cursore
BLNCT             = $CD         ; Temporizzatore del lampeggio del cursore
BLNON             = $CF         ; Ultimo lampeggio del cursore era on oppure off?
PNTR              = $D3         ; Posizione orizzontale del cursore (linea logica)
QTSW              = $D4         ; Modo virgolette attivo?
INSRT             = $D8         ; Modo INSERT attivo?
TBLX              = $D9         ; Posizione verticale del cursore

; Puntatori utente in pagina 0
ZP_1              = $FB         ; Puntatore utente in pagina 0 #1
ZP_2              = $FD         ; Puntatore utente in pagina 0 #2
ZP_3              = $F7         ; Puntatore utente in pagina 0 #3 (in realtà è RIBUF - sicuro da usare se non si utilizza l'interfaccia RS-232)
ZP_4              = $F9         ; Puntatore utente in pagina 0 #4 (in realtà è ROBUF - sicuro da usare se non si utilizza l'interfaccia RS-232)
ZP_5              = $A3         ; Puntatore utente in pagina 0 #5 (sicuro da usare se non si utilizza il registratore a cassette o l'I/O seriale)

ZPL_1             = NUMWRK      ; Puntatore utente a 24/32 bit in pagina 0 #1
ZPL_2             = NUMWRK+4    ; Puntatore utente a 24/32 bit in pagina 0 #2

; Pagina 1
STACK             = $0100       ; Stack

; Pagina 2
BUF               = $0200       ; Buffer di input del BASIC
KEYD              = $0277       ; Buffer di tastiera
COLOR             = $0286       ; Colore attuale del testo
HIBASE            = $0288       ; Pagina iniziale dell'area schermo
XMAX              = $0289       ; Massima dimensione del buffer di tastiera
RPTFLG            = $028A       ; Flag per la ripetizione automatica dei caratteri digitati
KOUNT             = $028B       ; Ritardo tra ripetizioni automatiche dei caratteri digitati
DELAY             = $028C       ; Ritardo per la prima ripetizione automatica di caratteri digitati
SHFLAG            = $028D       ; Flag digitazione tasti Shift/CTRL/Commodore
LSTSHF            = $028E       ; Ultima combinazione tasti Shift/CTRL/Commodore premuta
KEYLOG            = $028F       ; Vettore alla routine di inizializzazione della tavola di decodifica tastiera
MODE              = $0291       ; Abilita (0) o disabilita (128) la combinazione Shift+Commodore
PALFLG            = $02A6       ; Se <>0 allora l'output video è PAL
FREMEM            = $02A7       ; Memoria libera (da FREMEM+0 a FREMEM+88)

; Pagina 3
IERROR            = $0300       ; Vettore routine di stampa messaggi d'errore
IMAIN             = $0302       ; Vettore al loop principale del BASIC
ICRNCH            = $0304       ; Vettore routine di tokenizzazione
IQPLOP            = $0306       ; Vettore routine di de-tokenizzazione
IGONE             = $0308       ; Vettore routine di esecuzione prossima istruzione BASIC
IEVAL             = $030A       ; Vettore routine di valutazione espressione numerica
SAREG             = $030C       ; Area di memorizzazione del registro .A
SXREG             = $030D       ; Area di memorizzazione del registro .X
SYREG             = $030E       ; Area di memorizzazione del registro .Y
SPREG             = $030F       ; Area di memorizzazione del registro .P
USRPOK            = $0310       ; Punto d'ingresso per la funzione USR()
USRADD            = $0311       ; Indirizzo funzione USR()
TEMP_2            = $0313       ; Locazione non usata #2
CINV              = $0314       ; Vettore routine interrupt IRQ
CBINV             = $0316       ; Vettore routine interrupt BRK
NMINV             = $0318       ; Vettore routine interrupt NMI
FREME2            = $0334       ; Memoria libera (da FREME2+0 a FREME2+203)
TMPPG1            = $0334       ; Memoria libera (da TMPPG1+0 a TMPPG1+7)
TBUFFR            = $033C       ; Buffer di I/O cassetta (sicuro da usare fino a TBUFFER+191 se non si usa il registratore a cassette)
TMPPG2            = $03FC       ; Memoria libera (da TMPPG2+0 a TMPPG2+3)

; Pagina 4
VICSCN            = $0400       ; Indirizzo di base della memoria schermo all'accensione

; Pagina 8
BASTXT            = $0801       ; Indirizzo di base dell'area BASIC all'accensione

; Banchi di memoria cartucce
CRT_LO            = $8000       ; Banco di memoria per cartucce #1
CRT_HI            = $E000       ; Banco di memoria per cartucce #2

; BASIC
BASROM            = $A000       ; Indirizzo di base della ROM del BASIC

ERROR             = $A437       ; Gestore degli errori del BASIC
READY             = $A474       ; Esce nel BASIC stampando "READY."
NEWSTT            = $A7AE       ; Prepara la prossima istruzione per l'esecuzione
GONE              = $A7E4       ; Decodifica ed esegui la prossima istruzione
STROUT            = $AB1E       ; Stampa la stringa puntata da .A/.Y
FRMNUM            = $AD8A       ; Valuta un'espressione numerica
FRMEVL            = $AD9E       ; Valuta un'espressione numerica oppure stringa
PIVAL             = $AEA8       ; Valore della costante π in virgola mobile
NOTOP             = $AED4       ; FAC = NOT FAC
CHKCLS            = $AEF7       ; Verifica la presenza di una parentesi chiusa e poi saltala
CHKOPN            = $AEFA       ; Verifica la presenza di una parentesi aperta e poi saltala
CHKCOM            = $AEFD       ; Verifica la presenza di una virgola e poi saltala
SYNCHR            = $AEFF       ; Verifica la presenza del carattere in .A e poi saltalo
OROP              = $AFE6       ; FAC = ARG OR FAC
ANDOP             = $AFE9       ; FAC = ARG AND FAC
N32768            = $B1A5       ; Valore della costante -32768 in virgola mobile
GIVFAY            = $B1AA       ; Converti un numero in virgola mobile in un intero con segno in .A/.Y
AYINT             = $B1BF       ; Converti un numero in virgola mobile in un intero con segno in FACMO/FACLO
FCERR             = $B248       ; Esci con l'errore "?ILLEGAL QUANTITY"
GIVAYF            = $B391       ; Converti intero a 16 bit con segno in numero a virgola mobile
STRLIT            = $B487       ; Prepara i puntatori per una stringa in memoria
FRESTR            = $B6A3       ; Controlla che FAC punti ad una stringa e poi...
FREFAC            = $B6A6       ; ...Dealloca una stringa temporanea
GTBYTC            = $B79B       ; Leggi il prossimo carattere dallo stream di input...
GETBYT            = $B79E       ; ...poi convertilo in un intero tra 0 e 255 e mettilo in .X
GETNUM            = $B7EB       ; Estrai un parametro a 16 bit ed uno ad 8 bit separati da una virgola dal testo del BASIC
COMBYT            = $B7F1       ; Controlla la presenza di una virgola nello stream di input ed estrai il seguente valore ad 8 bit
GETADR            = $B7F7       ; Converti un numero in virgola mobile in intero tra 0 e 65535
FADDH             = $B849       ; Somma 0.5 al numero contenuto in FAC
FSUB              = $B850       ; FAC = MEM - FAC
FSUBT             = $B853       ; FAC = ARG - FAC
FADD              = $B867       ; FAC = MEM + FAC
FADDT             = $B86A       ; FAC = ARG + FAC
FONE              = $B9BC       ; Valore della costante 1 in virgola mobile
FSQR2             = $B9DB       ; Valore della costante SQR(2) in virgola mobile
FLOG2             = $B9E5       ; Valore della costante LOG(2) in virgola mobile
LOG               = $B9EA       ; FAC = LOG(FAC)
FMULT             = $BA28       ; FAC = MEM * FAC
FMULTT            = $BA2B       ; FAC = ARG * FAC
CONUPK            = $BA8C       ; Carica ARG con un numero float presente all'indirizzo .A/.Y
TENC              = $BAF9       ; Valore della costante 10 in virgola mobile
FDIV              = $BB0F       ; FAC = MEM / FAC
FDIVT             = $BB12       ; FAC = ARG / FAC
MOVFM             = $BBA2       ; Carica FAC con un numero float presente in memoria
MOV2F             = $BBC7       ; Copia FAC in memoria
MOVMF             = $BBD4       ; Arrotonda FAC e copialo in memoria
MOVFA             = $BBFC       ; Copia ARG in FAC
MOVAF             = $BC0C       ; Copia FAC in ARG (con arrotondamento)
MOVEF             = $BC0F       ; Copia FAC in ARG (senza arrotondamento)
ROUND             = $BC1B       ; Arrotonda FAC a seconda del valore di FACOV
SIGN              = $BC2B       ; Restituisci il segno di FAC in .A
SGN               = $BC39       ; Sostituisci FAC con il suo segno
FLOATB            = $BC4F       ; Normalizza FAC
FCOMP             = $BC5B       ; Confronta FAC con un numero float presente in memoria
QINT              = $BC9B       ; Converte FAC in un intero di 4 byte con segno
INT               = $BCCC       ; Tronca FAC ad un intero
FIN               = $BCF3       ; Converti una stringa ASCII in un numero in virgola mobile (FAC)
LINPRT            = $BDCD       ; Stampa un numero decimale contenuto in .A/.X
FOUT              = $BDDD       ; Converti FAC in una stringa ASCII
FHALF             = $BF11       ; Valore della costante 0.5 in virgola mobile
SQR               = $BF71       ; FAC = SQR(FAC)
FPWRT             = $BF7B       ; FAC = ARG ^ FAC
EXP               = $BFED       ; FAC = EXP(FAC)

; Generatore di caratteri
CHRGEN            = $D000       ; Indirizzo di base del generatore di caratteri
CASEU             = CHRGEN+$0000; Indirizzo di base del set di caratteri maiuscolo/grafica (128 caratteri)
CASEURV           = CHRGEN+$0400; Indirizzo di base del set di caratteri maiuscolo/grafica (128 caratteri, reverse)
CASEL             = CHRGEN+$0800; Indirizzo di base del set di caratteri minuscolo/maiuscolo (128 caratteri)
CASELRV           = CHRGEN+$0C00; Indirizzo di base del set di caratteri minuscolo/maiuscolo (128 caratteri, reverse)

; Pagina 216
COLRAM            = $D800       ; Indirizzo di base della memoria colore

; Kernal
KRNROM            = $E000       ; Indirizzo di base della ROM del Kernal

POLY1             = $E043       ; Calcola un polinomio dispari di grado n in FAC
POLY2             = $E059       ; Calcola un polinomio generico di grado n in FAC
RND               = $E097       ; Genera il prossimo numero casuale e mettilo in FAC
EREXIT            = $E0F9       ; Converti una condizione d'errore del Kernal in una condizione d'errore del BASIC
SLPARA            = $E1D4       ; Decodifica i parametri di LOAD/SAVE/VERIFY dallo stream di input e prepara l'I/O
COS               = $E264       ; FAC = COS(FAC)
SIN               = $E26B       ; FAC = SIN(FAC)
TAN               = $E2B4       ; FAC = TAN(FAC)
PI2               = $E2E0       ; Valore della costante π/2 in virgola mobile
TWOPI             = $E2E5       ; Valore della costante 2π in virgola mobile
FR4               = $E2EA       ; Valore della costante 0.25 in virgola mobile
ATN               = $E30E       ; FAC = ATN(FAC)
CLRSCR            = $E544       ; Inizializza lo schermo
IRQHND            = $EA31       ; Gestore standard delle interruzioni (IRQ)
IRQMIN            = $EA81       ; Gestore minimale delle interruzioni
RESET             = $FCE2       ; Reset del sistema
NMIHND            = $FE43       ; Gestore standard delle interruzioni non mascherabili (NMI)
BRKHND            = $FE66       ; Gestore standard delle interruzioni software (BRK)
IRQROUT           = $FF48       ; Instradatore delle interruzioni IRQ/BRK

; Vettori hardware del 6510
NMIVEC            = $FFFA       ; Vettore NMI
RESVEC            = $FFFC       ; Vettore Reset
IRBVEC            = $FFFE       ; Vettore IRQ/BRK
