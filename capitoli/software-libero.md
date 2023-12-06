# Software scientifico e software libero

## Software usato dall'informatica forense

- Gli scienziati creano strumenti per studiare meglio i fenomeni naturali
- Allo stesso modo, l'informatica forense crea strumenti di analisi (software) per i dati informatici, che rappresentano l'applicazione pratica delle teorie
- Il software usato dall'informatica forense deve rispondere alle esigenze del processo e della scienza

## Esigenze processuali

- Ammissibilità:
  - Criteri della sentenza Daubert per valutare l'uso di conoscenze scientifiche nel processo
  - Analogamente, uso degli stessi criteri per valutare l'uso di software sviluppato sulla base di ricerca scientifica
- Acquisizione e conservazione della prova informatica:
  - Si deve verificare che il software non deve modifica i dati originali, e deve creare una copia uguale all'originale
  - Idealmente si deve verificare l'esatto funzionamento del software, ma se è impossibile visionare il codice sorgente o sapere quali algoritmi vengono utilizzati, ci si può affidare alle certificazioni attribuite da soggetti autorevoli
- Analisi della prova informatica:
  - Software deve essere sufficientemente flessibile, in modo da poter essere utilizzato nei vari casi concreti che si possono presentare
  - Risultati devono essere corretti, stesse considerazioni fatte per l'acquisizione
- Contraddittorio sulla prova informatica:
  - Diritto alla difesa implica la necessità di sapere come l'analisi è stata svolta
  - L'analisi deve essere ripetibile (usare gli stessi strumenti) e riproducibile (ottenere gli stessi risultati) per la controparte, e nel futuro (giudizio di impugnazione, revisione&hellip;)
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

