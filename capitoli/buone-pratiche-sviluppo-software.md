# Sviluppo di software scientifico

## Introduzione

- dettagliare come viene sviluppato il software libero
- capitolo più tecnico

## Scelta di una licenza libera
## Scelta del linguaggio di programmazione

### Linguaggi di programmazione

- casi d'uso previsti dal linguaggo, o nicchia in cui il linguaggio è stato adottato
- Ad es., Bash per lo shell scripting, Lua, Python
- idealmente, si deve tendere verso un linguaggio che si avvicina al pozzo del successo <https://blog.codinghorror.com/falling-into-the-pit-of-success/>

### Fattori sociali

- popolarità del linguaggio, più programmatori e librerie
- manutenibilità nel tempo del linguaggio: ad es. C
- complessità cognitiva del linguaggio: ad es. Perl

### Fattori tecnici

- sistema dei tipi
- gestione della memoria
- valori immutabili ("const" e binding in JS)
- gestione degli errori
- velocità di esecuzione

## Sistemi di controllo di versione

- distribuzione del codice
- controllo di integrità
- estrazione di versioni particolari
- possibilità di sperimentare con più funzionalità

## Documentazione del codice

- diataxis.fr
- non serve sapere come funziona un computer per poterlo utilizzare, ma cfr. Unix, con pagine del manuale scritte come bug report, UNIX haters handbook, 53 ss., "collect bug reports"), mancata documentazione del codice per proteggere i segreti industriali?

### README

- Equivalente ad un abstract

### Commenti

- Spiegano perché quel codice esiste, non cosa fa
- Se spiegano cosa fa

### Manuale di riferimento

- approccio teorico, spiega il perché
- utile per i programmatori, indica a cosa serve ogni componente

#### Architettura in generale

- sguardo d'insieme, spiega l'obiettivo da raggiungere, e come i vari componenti interagiscono fra di loro

#### Singoli componenti

- analisi più dettagliata dei singoil componenti, e come operano sui dati

### Manuale per l'utilizzatore

- approccio pratico, spiega il come
- utile per gli utilizzatori finali, spiega come usare concretamente il software per raggiungere quell'obiettivo
- deve indicare le limitazioni tecniche del programma

#### Installazione

- passi da seguire per compilare ed eseguire il software: programmi e librerie necessarie, ecc.

#### Uso delle funzionalità

- passi da seguire per usare una certa funzionalità
- spiegazione di cosa serve, esempi con le opzioni più importanti
- spiegazione dettagliata con tutte le opzioni disponbili

## Contribuzioni da parte di terzi

- organizzazione del progetto
- si applica specie ai progetti più importanti, o con molti contributori
- definizione di responsabilità
- CLA
- controllo del codice
- caso di contribuzioni in mala fede

## Uso di codice di terze parti

### Vantaggi

### Dependency hell

### Supply chain attacks

### Vendoring

## Gestione degli errori di runtime

### Errore di runtime

- problemi che si verificano solo quando il codice viene eseguito
- problema dell'*happy path*, di imprevisti, dell'errore umano, di attacchi voluti
- filosofie del look before you leap e easier to ask for forgiveness
- look before you leap è migliore da un punto di vista scientifico

### Errori in-band

- valori-guardia

### Errori come eccezioni

- praticamente un goto, Dijkstra

### Errori out-of-band

- controllo automatico degli errori, possibilità di analisi statica

## Gestione degli errori di programmazione
### Type-checking

- problemi che possono essere individuati guardando solo il codice

### Linting

- linters

### Testing

- funzioni testabili
- evitare regressioni
- integration testing

### Fuzzing

- garantire che il programma funziona in maniera prevedibile anche con input corrotti
- evitare situazioni in cui il software 

## Build riproducibili
