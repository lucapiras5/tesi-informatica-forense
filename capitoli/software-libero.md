# Software scientifico e software libero

## Software usato dall'informatica forense

Come le altre scienze naturali, anche l'informatica forense ha bisogno di strumenti per analizzare il suo oggetto di studio, i dati informatici. Per l'informatica, questo strumento è il *software* (programmi informatici).

È bene chiarire fin da subito che tutto il *software*, i "programmi" informatici, sono a loro volta "dati" informatici, non hanno una natura diversa. La particolarità dei programmi informatici è che sono dati informatici che descrivono una serie di istruzioni, che possono essere eseguite dal computer. Queste istruzioni indicano come altri dati devono essere modificati, al fine di ottenere un risultato utile.

Da questa nozione seguono alcune importanti conseguenze.

Una delle caratteristiche dei dati digitali è che possono copiati con facilità per un numero illimitato di volte. Pertanto, in teoria, è possibile anche copiare il software usato per l'analisi, dato che consiste in semplici dati, in modo che il perito ed i consulenti dispongano non solo degli stessi dati, ma anche degli stessi strumenti di analisi.

Inoltre, i dati informatici non hanno senso in isolamento. Non è sempre possibile determinare se un dato è stato modificato osservando soltanto il singolo dato, perché è generalmente possibile modificare i singoli bit che compongono i dati senza lasciare tracce. Spesso è necessario cercare altri elementi che facciano riferimento a quel file all'interno dell'intero sistema.

Allo stesso modo, copiare il singolo programma potrebbe non essere sufficiente. I programmi spesso hanno bisogno di librerie di terze parti,[^DefinizioneLibreriaEsterna] o possono essere eseguiti solo su versioni particolari di un sistema operativo. Anche al di fuori di questi casi, lo stesso programma si potrebbe comportare in maniera diversa se installato su due computer diversi, per un qualsiasi numero di motivi, che sono difficili da determinare a priori.[^MotiviComportamentoDiversoProgrammi] Per questi motivi, è preferibile copiare l'intero "contesto" in cui il programma viene eseguito, ossia, l'intero sistema operativo utilizzato. In questo modo, perito e consulenti dispongono anche dello stesso, identico ambiente virtuale usato per analizzare i dati.

[^DefinizioneLibreriaEsterna]: Nell'informatica, una *library* ("libreria") è una raccolta di codice (istruzioni) che non possono essere eseguite direttamente, ma hanno una funzione di supporto rispetto al software che viene eseguito. Si può pensare al rapporto che intercorre fra il perito ed il giudice: il perito non esercita il potere giurisdizionale, ma il suo ruolo è di fornire le conoscenze tecniche necessarie al giudice per svolgere il suo ruolo nella migliore maniera possibile. Ad esempio, numerosi programmi devono poter decodificare un file JPG: un visualizzatore di immagini, un browser, un programma per la *image forensics* (analisi forense delle immagini)&hellip; La soluzione è di creare una libreria che possa essere utilizzata da tutti questi programmi. Gli sforzi vengono concentrati su un unico progetto specializzato, non c'è una duplicazione di sforzi o codice inutile, e tutti i miglioramenti alla libreria (ad esempio, nuove funzionalità, maggiore efficienza, correzione di bug&hellip;) beneficiano tutti i programmi che la utilizzano. La soluzione alternativa, dove ogni programma deve "reinventare la ruota" per ogni formato che intende utilizzare, sarebbe estremamente inefficiente e porterebbe ad una disparità di trattamento (non tutti i programmi avrebbero le stesse funzionalità, avrebbero bug diversi, ed in generale, si comporterebbero in maniera diversa).

[^MotiviComportamentoDiversoProgrammi]: Ad esempio, i due computer potrebbero avere due versioni diverse della stessa libreria esterna. Una versione ha un bug, che produce risultati erronei. L'altra versione è più recente, e ha risolto questo bug. Le due versioni possono produrre risultati diversi. Allo stesso modo, analoghe considerazioni possono essere svolte riguardo l'esecuzione dello stesso programma su sistemi operativi diversi (ad esempio, Windows e GNU/Linux), o anche fra versioni diverse dello stesso sistema operativo (che possono aggiornare le librerie incluse nel sistema operativo). Naturalmente, è probabile che queste differenze siano insignificanti nella pratica, ma è comunque preferibile eliminare le differenze dove possibile, in modo che il contraddittorio riguardi effettivamente lo stesso oggetto, e non oggetti diversi. 

Nella pratica, questa possibilità può essere limitata per motivi tecnici e/o legali.

Se vengono usati dispositivi specializzati, diversi da un normale computer, per l'acquisizione, potrebbe essere difficile o impossibile ottenere una copia del software che regola il loro funzionamento. Anche quando il software viene eseguito su un normale computer, il suo funzionamento potrebbe essere condizionato dall'uso di misure di protezione hardware.[^HardwareDongle]

[^HardwareDongle]: Ad esempio, un *hardware dongle* (chiave di protezione hardware), un supporto materiale che deve rimanere inserito durante il funzionamento del software, e permette di identificare il licenziatario che sta usando il software. In sua assenza, il software si rifiuta di funzionare.

Anche in assenza di queste limitazioni tecniche, rimangono comunque le limitazioni legali. Il diritto d'autore si applica anche al software, che viene equiparato ad un'opera letteraria (art. 1 co. 2 l.d.a.).[^LeggeDirittoAutore] Anche se il divieto di creare copie del software non venisse menzionato espressamente nel contratto di licenza d'uso concluso fra lo sviluppatore e l'utilizzatore, questa possibilità sarebbe già esclusa dalla legge sul diritto d'autore, che prevede il "diritto esclusivo" dell'autore di creare copie dell'opera, in generale dall'art. 13, e con specifico riguardo per i "programmi per elaboratore" all'art. 64-*bis* lett. *a*.

[^LeggeDirittoAutore]: L. 633/1941.

D'altro canto, esistono delle eccezioni e limitazioni a questo diritto. In particolare, l'art. 67 recita:

> Opere o brani di opere possono essere riprodotti a fini di pubblica sicurezza, nelle procedure parlamentari, giudiziarie o amministrative, purché si indichino la fonte e, ove possibile, il nome dell'autore.

Il processo penale è sicuramente una delle "procedure giudiziarie" che hanno "fini di pubblica sicurezza".

Più in generale, l'art. 68 co. 1 e 6 prevedono che:

> 1\. È libera la riproduzione di singole opere o brani di opere per uso personale dei lettori, fatta a mano o con mezzi di riproduzione non idonei a spaccio o diffusione dell'opera nel pubblico.

> 6\. È vietato lo spaccio al pubblico delle copie di cui ai commi precedenti e, in genere, ogni utilizzazione in concorrenza con i diritti di utilizzazione economica spettanti all'autore.

Sono eccezioni ad una regola generale, e quindi devono essere interpretate in maniera restrittiva. Si potrebbe argomentare che la creazione di una copia nel contesto di un procedimento giudiziario non è un "uso personale", ma piuttosto esiste un interesse pubblico. Ma la *ratio*, l'intento della norma è chiaro, la creazione di copie è ammessa, purché non danneggi la possibilità di sfruttamento economico dell'opera da parte dell'autore.

Creare una copia del software, in modo da permettere alle altri processuali di svolgere un contraddittorio non solo sui metodi usati e sul risultato dell'analisi, ma anche sullo specifico strumento usato per svolgere l'analisi nel caso concreto, difficilmente può essere considerato un ostacolo allo sfruttamento economico del software, essenzialmente una "vendita persa", e tanto meno una "diffusione dell'opera nel pubblico".

----

- La fragilità dei dati -- la "descrizione" con cui le istruzioni sono codificate è importante.
- Copia dei dati e manutenzione del loro funzionamento: più facili con il software libero, che presenta ulteriori vantaggi (si può sapere come il software funziona).
- Opportunità anche per il software di analisi di essere open-source.

Si può distinguere fra due tipi di software. Il software per la fase di ricerca dell'informatica forense, che è tenuto a rispondere soltanto alle esigenze scientifiche, ed il software per il software che sarà utilizzato concretamente nel corso del processo per il trattamento dei dati, che deve rispondere ad esigenze anche processuali.

## Esigenze processuali

L'acquisizione dei dati informatici è il primo momento in cui il software per l'informatica forense assume rilevanza.

Il primo momento in cui il software per l'informatica forense ha rilevanza proce
Le esigenze processuali che riguardano la prova scientifica sono l'attendibilità della teoria, il rispetto del contraddittorio.

Per essere ammissibile, la prova scientifica deve 

- Ammissibilità:
  - Criteri della sentenza Daubert per valutare l'uso di conoscenze scientifiche nel processo
  - Analogamente, uso degli stessi criteri per valutare l'uso di software sviluppato sulla base di ricerca scientifica
- Contraddittorio sulla prova informatica:
  - Diritto alla difesa implica la necessità di sapere come l'analisi è stata svolta
  - L'analisi deve essere ripetibile (usare gli stessi strumenti) e riproducibile (ottenere gli stessi risultati) per la controparte, e nel futuro (giudizio di impugnazione, revisione&hellip;)
- Acquisizione e conservazione della prova informatica:
  - Si deve verificare che il software non deve modifica i dati originali, e deve creare una copia uguale all'originale
  - Idealmente si deve verificare l'esatto funzionamento del software, ma se è impossibile visionare il codice sorgente o sapere quali algoritmi vengono utilizzati, ci si può affidare alle certificazioni attribuite da soggetti autorevoli
- Analisi della prova informatica:
  - Software deve essere sufficientemente flessibile, in modo da poter essere utilizzato nei vari casi concreti che si possono presentare
  - Risultati devono essere corretti, stesse considerazioni fatte per l'acquisizione
- Valutazione della prova informatica:
  - Perito e consulenti devono spiegare perché il metodo di analisi è affidabile, *argumentum ab auctoritate* del software non è sufficiente
  - Più è possibile fare riferimento al concreto funzionamento del software, e meglio è
  - Meno è possibile sapere come il software ha svolto l'acquisizione ed analisi, e più il giudice deve essere critico (un conto è il principio di conservazione della prova, un conto è sopravvalutare il valore e la validità epistemologica di una prova)

## Esigenze scientifiche

- Tendono a sovrapporsi con le esigenze processuali, perché nel processo non può entrare *junk science*
- Libero accesso a ricerca e codice:
  - La ricerca scientifica ed il software di analisi devono essere resi disponibili liberamente
  - È un prerequisito per le fasi successive
- Riproducibilità e ripetibilità:
  - *Replication crisis* esiste anche per l'informatica, necessità di tecniche per mitigare il problema
  - Analisi devono essere ripetibili, risultati devono essere riproducibili e verificabili
- Peer review e trasparenza:
  - Equivalente scientifico del contraddittorio fra le parti, deve riguardare la ricerca scientifica ed il software prodotto
  - Deve essere aperta a chiunque abbia le capacità tecniche necessarie
  - Discussione aperta dei contributi suggeriti
  - Sviluppo del software con modalità trasparenti
- Esattezza:
  - Software deve implementare quando concluso dalla ricerca scientifica in maniera esatta
  - Conoscenza dei bug: i bug vanno documentati e risolti in maniera trasparente, metodi per evitare che i bug si ripresentino
  - Robustezza dei metodi di analisi: il software deve sempre comportarsi in maniera prevedibile, specie se incontra un formato invalido o inaspettato (analogia con inammissibilità ed improcedibilità)

## Codice macchina e codice sorgente

Il termine *software* (programma informatico) può essere inteso in due modi.
Nel linguaggio comune, indica un programma eseguibile da un computer.
Nell'ambito specifico della programmazione, si distingue fra software inteso come *machine code* (codice macchina) e *source code* (codice sorgente).

Il codice macchina può essere 

L'espressione "software" si riferisce ad un programma che può essere eseguito direttamente da un computer.

si parla di software, in realtà ci si riferisce al **codice macchina**.

- Software come codice macchina o come codice sorgente
- Anche il sistema operativo fa parte del software

- Codice macchina:
    - Istruzioni di basso livello, indicano direttamente alla macchina cosa fare
    - Non leggibili da parte del programmatore (salvo *disassembly*)
    - Natura puramente materiale, analogia con il giudizio di esecuzione
    - Strettamente legato ad un processore, ogni processore ha un set di istruzioni particolare
- Codice sorgente:
    - File di testo
    - Descrizione astratta del programma, il processore non può utilizzarla diversamente, analogia con il giudizio di cognizione
    - Possono contenere commenti
    - Linguaggi di programmazione di basso livello: assembler, C, ecc, gestione della memoria manuale, paradigma imperativo
    - Linguaggi di alto livello: gestione automatica della memoria, paradigma descrittivo (al massimo livello con SQL)

## Compilazione

- Conversione permanente da codice sorgente a codice macchina, sempre necessario
- Informazioni perse, possibilità di offuscamento
- Utile per il software proprietario che vuole nascondere il suo funzionamento
- Problema del software scientifico che non dà accesso al codice sorgente

## Reverse-engineering

- Legata alla libertà di studiare il funzionamento del software
- Interessa principalmente per la fase di ricerca dell'informatica forense, quando la semplice osservazione del funzionamento del programma non è sufficiente
- Rappresenta il contrario della compilazione
- Casi giuridici che affermano questa libertà
- Ostacoli alla reverse-engineering di natura tecnica

## Documentazione del software scientifico

- Tutto il software scientifico deve essere documentato, facendo riferimento alla ricerca scientifica, e spiegando come funziona il software, che tipo di input si aspetta, i limiti dell'analisi&hellip;
- Software proprietario: tensione fra documentare il suo funzionamento, e non rivelare troppi dettagli per mantenere il *competitive advantage*, problema di verificare se il funzionamento corrisponde alla documentazione
- Software libero: "code as documentation", tensione fra la possibilità di documentazione estensiva e la mancanza di risorse

## Licenze d'uso del software

- Software è soggetto al copyright, è considerato un'opera scritta
- Software proprietario: solo compilato, *open-source* ma solo *source-available*
- Software libero: usa licenze libere, libertà secondo la FSF, licenze approvate dalla FSF e OSI, meglio evitare licenze ad-hoc
- Inquadramento delle licenze nel sistema giuridico italiano

## Licenze copyleft (GPL)

- Opere derivate devono usare la stessa licenza, e distribuire il codice sorgente
- Ideale per il software scientifico

## Licenze permissive (LGPL, MIT)

- Opere derivate possono rimanere proprietarie

## Licenze per la documentazione

- Per la ricerca scientifica e per la documentazione dei programmi
- Licenze per le raccolte di dati

