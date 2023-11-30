In termini generali, l'espressione "informatica forense" suggerisce già da sé l'oggetto della materia.
L'aggettivo "forense" indica che qualcosa riguarda l'attività giudiziaria, e quando viene utilizzata con riferimento specifico alle scienze, significa che quella scienza viene usata per risolvere problemi legali.[^treccani-forense]

[^treccani-forense]: V. <https://www.treccani.it/vocabolario/forense/>.

Nell'immaginario collettivo, gli esempi classici di scienze forensi sono la medicina forense, la tossicologia forense, la balistica forense, la psichiatria forense &hellip;
Sono tutte scienze che si inseriscono all'interno di un procedimento giudiziario.

Nel caso tipico di processo penale, lo scopo è di fornire gli elementi utili a determinare la responsabilità penale dell'imputato.
Pertanto, le scienze forniscono tecniche e strumenti per dimostrare i fatti (la condotta e l'evento), e leggi scientifiche per dimostrare il nesso causale fra la condotta e l'evento.

----

Da un punto di vista storico, l'informatica forense nasce ed inizia a svilupparsi negli Stati Uniti, per due motivi.

Il primo era il fatto che gli Stati Uniti erano -- e sono tutt'ora -- all'avanguardia per quanto riguarda l'innovazione informatica:

- I *personal computer*[^personal-computer] furono sviluppati e standardizzati da IBM ed Apple;
- Il mercato dei processori e schede grafiche è quasi interamente controllato da Intel, AMD e Nvidia;
- I principali sistemi operativi (Windows, macOS e GNU) sono stati inizialmente sviluppati rispettivamente da Microsoft, Apple, e da Richard Stallman (fondatore della Free Software Foundation);
- Il linguaggio di programmazione C[^personal-computer] è stato originariamente sviluppato all'interno di Bell Labs, e successivamente standardizzato dall'ANSI.

[^personal-computer]: Computer pensati per l'uso domestico.

L'aforisma "fatta la legge, trovato l'inganno" può essere adattato in "fatta la tecnologia, trovato il reato": se la popolazione ha a disposizione nuove tecnologie, i criminali troveranno il modo di abusarle, e si renderà necessario un intervento legale.

----

I bit hanno una natura particolare.
Non possono essere percepiti e manipolati se non con l'uso di sistemi e programmi informatici, ma questo non significa che hanno natura immateriale.
La conservazione e trasmissione dei bit richiede sempre una modificazione nel mondo materiale.

Se non fosse possibile misurare questa modificazione[^fenomeni-elettromagnetici] non sarebbe possibile conservare e trasmettere i bit.
Ancora, il fatto che la modificazione esiste solo per un periodo limitato[^durata-breve] o può essere dispersa facilmente[^dispersione-facile] non è un argomento convincente per la natura immateriale dei dati.

[^fenomeni-elettromagnetici]: Generalmente la modificazione consiste in una carica elettrica, o un'onda elettromagnetica.
[^durata-breve]: Ad esempio, i dati contenuti nella RAM si disperdono poco dopo che il computer viene spento, i dati in transito su un cavo o su un collegamento senza fili esistono solo per la durata del trasferimento.
[^dispersione-facile]: Ad esempio, chiudendo un programma senza salvare le modifiche, spegnendo il computer, scollegando il dispositivo USB o un cavo Ethernet durante un trasferimento di dati.

----

I sistemi informatici hanno a disposizione un numero molto più limitato di bit.
Secondo il numero di Avogadro, un singolo grammo di idrogeno contiene circa 6 &times; 10^23^ atomi di idrogeno.
La capacità attuale dei dischi rigidi è misurata in terabyte (TB), dove un TB equivale a 8 &times; 10^12^ bit.

----

Per "forma che si presta ad elaborazione informatica", si intende la rappresentazione dei dati in codifica binaria, come una sequenza di bit (da *binary digit*, cifra binaria).

I bit hanno una natura particolare---"sono" memoria, perché sono in grado di rappresentare dati, ma "non hanno" memoria.
Un bit è già l'unità minima ed indivisibile dei dati digitali, e quindi non può tenere traccia dei dati che conteneva in precedenza, conosce solo il suo stato attuale.

Questo differenzia i dati informatici dalla realtà materiale.
La realtà materiale è composta da un numero elevatissimo di atomi.
Un ipotetico strumento di misurazione sufficientemente sensibile può rilevare almeno le tracce di una qualsiasi modificazione.
È praticamente impossibile non disturbare almeno qualche molecola.

In teoria questo strumento potrebbe essere in grado di leggere i supporti materiali su cui sono memorizzati i dati informatici, e di ricostruire i dati che sono stati sovrascritti in un secondo momento [@Gutmann1996].
Nella pratica, si dubita della fattibilità di questo tipo di operazioni [@Feenberg2013].
Anche se fosse possibile, sarebbe comunque necessario valutare l'affidabilità delle tecniche utilizzate e dei risultati ottenuti.

Questo significa che l'unico modo di verificare se i dati informatici sono stati alterati è di studiare i dati stessi.
Viceversa, i dati digitali possono essere facilmente modificati senza lasciare tracce.


In teoria, anche un sistema informatico può tenere traccia di tutte le modifiche che incidono sui bit che lo compognono.

Quando un bit viene sovrascritto, non è possibile esaminare i bit adiacenti per cercare di recuperare il valore precedente.

Né tantomeno è possibile sapere "chi" ha modificato quel bit, nel senso di quale utente o programma.


- Caratteristiche dei bit rispetto alle "prove materiali"

----

Le "norme giuridiche" vanno intese nel senso più ampio possibile, l'unico requisito che le rende di interesse per l'informatica forense è che possano portare al trattamento di dati informatici.

. Possono essere di diritto sostanziale o processuale, appartenere a qualsiasi branca del diritto
come le "norme di diritto sostanziale e processuale che talvolta, anche solo latamente, riguardano l'utilizzo di sistemi informatici e telematici nonché i dati digitali; \Omissis{} non è esclusa nessuna branca del diritto, anche extra ordinamentale" [@Gammarota2016, 27].

In primo luogo, si specifica che è preferibile un approccio il più possibile espansivo.

Da questo punto di vista, è opportuno interpretare "processuali" come "processuali e procedimentali".

Nell'ambito della procedura penale, il "processo" propriamente detto inizia solo con l'esercizio dell'azione penale da parte del PM.
Fino a quel momento, e quindi per la durata delle indagini preliminari, si parla di "procedimento" [@Conso2020, 47, 419].

Tuttavia, varie disposizioni permettono agli atti di indagine preliminare, o comunque compiuti prima dell'inizio del giudizio, di entrare nel dibattimento.

Ad esempio, gli atti irripetibili compiuti dalla PG e dal PM, ed i verbali degli atti assunti in incidente probatorio (art. 431 co. 1 lett. *b*, *c*, *e* c.p.p.) sono inclusi nel fascicolo del dibattimento.

La loro natura irripetibile rende imprescindibile il ricorso alle tecniche dell'informatica forense, in modo da garantire una corretta trattazione del dato.

Invece di cercare di enumerare tutte le attività tipiche possibili, si compie un generico rinvio alle "tecniche informatiche in senso ampio \Omissis{} purché finalizzate al trattamento dei dati digitali per trarne informazioni utili alla ricostruzione dei fatti processualmente rilevanti" [@Gammarota2016, 27].

Questo evita il problema di cercare di essere il più esaustivi possibili nella definizione, o di doverla aggiornare periodicamente per tenerla al passo con le nuove prassi o le innovazioni tecniche.

Le *best practices* (migliori pratiche) in tema di *digital evidence* che vengono raccolte e codificate a livello internazionale negli standard ISO/IEC [@Gammarota2016, 27--28] non sono propriamente norme giuridiche, perché la loro adozione è volontaria.
Piuttosto, data la loro natura principalmente tecnica, possono essere ricondotte all'interno delle "tecniche informatiche".

Nel definire l'oggetto dell'informatica forense, non si parla di "prova informatica", ma in maniera estremamente generica, di "dati digitali a fini processuali".

Il termine "prova" ha un significato tecnico preciso, che evoca la decisione nel merito del giudice---decidere una causa civile, o determinare se l'imputato sia colpevole, innocente, o socialmente pericoloso---e una serie di principi, tra cui la sua formazione in contraddittorio, specie nel processo penale (art. 111 co. 4 Cost.).

Tuttavia, esistono situazioni in cui il giudice deve prendere una decisione, ma non si parla propriamente di "prove".
Ad esempio, nel caso delle misure cautelari nel processo penale, il giudice decide sulla base di "gravi indizi di colpevolezza" (art. 273 co. 1 c.p.p.), che vengono presentati unilateralmente dal PM---all'imputato è concesso difendersi solo in un momento successivo, con l'interrogatorio di garanzia (art. 294 co. 1 c.p.p.).

Il solo fatto che si richiedano "indizi", e non "prove", non deve far pensare che non si debbano applicare i principi dell'informatica forense.
Anzi, proprio per il fatto che si richiedono "gravi indizi", e quindi quasi una prova anticipata della colpevolezza [@Conso2020, 336--337], diventa necessario trattare correttamente i dati digitali su cui si fonda la richiesta.

In ultimo, l'espressione "a fini processuali" evita che la scienza rimanga fine a sé stessa---il fine che gli viene impartito è di rispondere alle esigenze e ai meccanismi del processo, e di rispettare le garanzie processuali [@Renzetti2015, 399].

Le tecniche di trattamento dei dati previste dall'informatica forense saranno fondamentali per il processo telematico, dove non solo alcune prove, ma tutti gli atti che compongono il processo, esistono come dati digitali.

La Convenzione di Budapest definisce i *computer data* (dati informatici) come (art. 1, lett. *b*):

> *[A]ny representation of facts, information or concepts in a form suitable for processing in a computer system, including a program suitable to cause a computer system to perform a function;*.[^definizione-dati-digitali]

[^definizione-dati-digitali]: *Qualunque presentazione di fatti, informazioni o concetti in una forma che si presta a elaborazione informatica, inclusi i programmi che permettono a un sistema informatico di svolgere una funzione*. \VediUrl{Convenzione sulla cibercriminalità}{fedlex.admin.ch}{2011}{https://www.fedlex.admin.ch/eli/cc/2011/888/it}.

----

