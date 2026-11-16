# c64

Simboli del Commodore 64: mappa di memoria, tabella dei salti del Kernal e codici d'errore del Kernal. La libreria `c64` fa parte della Libreria di Sistema (progetto `c64.c64`) ed è scritta in assembly 6510 per C64Studio (sintassi ACME).

Questo documento deriva dai sorgenti. I file contengono solo definizioni di simboli, nessun codice e nessun dato: per ogni dettaglio fanno fede i sorgenti, dove ogni simbolo ha il suo commento.

<a id="contenuto"></a>
## Contenuto

| Modulo | Gruppo | Descrizione |
|---|---|---|
| [`symbols.asm`](#modulo-symbols) | Pagina 0 | Registri della porta del 6510 |
| | Pagina 0 - BASIC | Variabili e puntatori del BASIC in pagina zero |
| | Pagina 0 - KERNAL | Variabili del Kernal in pagina zero |
| | Puntatori utente in pagina 0 | Puntatori in pagina zero a disposizione del programma |
| | Pagina 1 | Stack |
| | Pagina 2 | Buffer e variabili di sistema |
| | Pagina 3 | Vettori, aree di salvataggio e buffer |
| | Pagina 4 | Memoria dello schermo |
| | Pagina 8 | Inizio del programma BASIC |
| | Banchi di memoria cartucce | Indirizzi dei due banchi per le cartucce |
| | BASIC | Routine e costanti della ROM del BASIC |
| | Generatore di caratteri | Set di caratteri |
| | Pagina 216 | Memoria colore |
| | Kernal | Routine della ROM del Kernal |
| | Vettori hardware del 6510 | Vettori NMI, Reset, IRQ/BRK |
| [`kernal.asm`](#modulo-kernal) | Tabella salti del Kernal | Punti d'ingresso delle routine del Kernal |
| | Codici d'errore del Kernal | Codici d'errore restituiti dalle routine del Kernal |

## Uso

### Inclusione

La cartella `c64` sta nella cartella delle librerie di C64Studio, accanto alle altre librerie di sistema. Il sorgente principale del programma include i file di simboli che gli servono nella parte dedicata ai simboli, prima del codice:

```
!source <c64/kernal.asm>, once
!source <c64/symbols.asm>, once
```

I file non includono altri file. Le altre librerie dichiarano i file di simboli che richiedono nelle `Dipendenze Esterne` dei contratti d'interfaccia.

### Configurazione

Nessuna parte dei file è condizionata: la libreria non ha parametri di configurazione.

<a id="modulo-symbols"></a>
## symbols.asm

Mappa di memoria del Commodore 64: pagina zero, BASIC, Kernal, vettori di sistema e ROM. Il file imposta anche la CPU con `!cpu 6510`.

| Gruppo | Simboli | Contenuto |
|---|---|---|
| Pagina 0 | 3 | Da `D6510` a `UNUSED` |
| Pagina 0 - BASIC | 35 | Da `VERCK` a `RNDX` |
| Pagina 0 - KERNAL | 17 | Da `STATUS` a `INSRT` |
| Puntatori utente in pagina 0 | 7 | `ZP_1`, `ZP_2`, `ZP_3`, `ZP_4`, `ZP_5`, `ZPL_1`, `ZPL_2` |
| Pagina 1 | 1 | `STACK` |
| Pagina 2 | 14 | Da `BUF` a `FREMEM` |
| Pagina 3 | 20 | Da `IERROR` a `TMPPG2` |
| Pagina 4 | 1 | `VICSCN` |
| Pagina 8 | 1 | `BASTXT` |
| Banchi di memoria cartucce | 2 | `CRT_LO`, `CRT_HI` |
| BASIC | 64 | Da `BASROM` a `EXP` |
| Generatore di caratteri | 5 | Da `CHRGEN` a `CASELRV` |
| Pagina 216 | 1 | `COLRAM` |
| Kernal | 20 | Da `KRNROM` a `IRQROUT` |
| Vettori hardware del 6510 | 3 | `NMIVEC`, `RESVEC`, `IRBVEC` |

I simboli delle routine e delle costanti in virgola mobile delle ROM sono indirizzi di ROM e hanno nel commento ciò che fanno (per esempio `FADD`, `MOVFM`, `PIVAL`).

I puntatori utente in pagina zero sono a disposizione del programma, con queste condizioni:

| Simbolo | Indirizzo | Condizione d'uso |
|---|---|---|
| `ZP_1`, `ZP_2` | `$FB`, `$FD` | Nessuna |
| `ZP_3` | `$F7` | Coincide con `RIBUF`: sicuro da usare se non si utilizza l'interfaccia RS-232 |
| `ZP_4` | `$F9` | Coincide con `ROBUF`: sicuro da usare se non si utilizza l'interfaccia RS-232 |
| `ZP_5` | `$A3` | Sicuro da usare se non si utilizza il registratore a cassette o l'I/O seriale |
| `ZPL_1`, `ZPL_2` | `NUMWRK`, `NUMWRK+4` | Puntatori a 24 o 32 bit; `NUMWRK` è l'area di lavoro dei moduli della libreria `math`, interi e virgola mobile ([Nota #04 di `math/fp.asm`](https://github.com/JoJo-1973/math#nota-fp-04)) |

[↑ Torna al contenuto](#contenuto)

<a id="modulo-kernal"></a>
## kernal.asm

Tabella dei salti del Kernal e codici d'errore del Kernal.

| Gruppo | Simboli | Contenuto |
|---|---|---|
| Tabella salti del Kernal | 39 | Da `CINT` (`$FF81`) a `IOBASE` (`$FFF3`); il commento di ogni voce indica i registri che la routine altera |
| Codici d'errore del Kernal | 11 | Da `K_ERR_BREAK` (`$00`) a `K_ERR_ILLEGAL_DEVICE_NUMBER` (`$09`), più `K_ERR_MOVED_RS232_BUFFER` (`$F0`) |

[↑ Torna al contenuto](#contenuto)

<a id="limiti-noti"></a>
## Limiti noti

I sorgenti non dichiarano limiti, a parte le condizioni d'uso dei puntatori utente in pagina zero (vedi `symbols.asm`).

[↑ Torna al contenuto](#contenuto)
