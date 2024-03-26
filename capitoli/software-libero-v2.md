# Software libero come modello ideale per l'informatica forense

## Esigenze del software per l'informatica forense

### Fasi dell'analisi

TODO L'informatica forense studia il trattamento dei dati informatici, e lo strumento per il loro trattamento sono i programmi informatici, anche detti software.^[I due termini saranno usati in maniera intercambiabile.] Il software usato dall'informatica forense deve rispondere ad una serie di requisiti, che derivano dal fatto che il software sarà usato all'intero di un processo.

### Acquisizione

L'acquisizione è la fase in cui si ottiene una copia dei dati informatici [@Ferrazzano2014, p. 34]. Quando il codice di procedura penale menziona operazioni che potrebbero influire sull'integrità dei dati informatici,^[Ad esempio, le ispezioni, perquisizioni, sequestri, accertamenti urgenti.] usa espressioni come "adottando misure tecniche dirette ad assicurare la conservazione dei dati originali e ad impedirne l'alterazione",^[Art. 244 co. 2, art. 247 co. 1-*bis*, art. 352 co. 1-*bis* c.p.p.] oppure "mediante procedura che assicuri la conformità della copia all'originale e la sua immodificabilità".^[Art. 254-*bis*, art. 354 co. 2 c.p.p.]

Pertanto, si può concludere che l'acquisizione dei dati informatici deve impedire l'alterazione dei dati originali, deve garantire che la copia sia conforme all'originale, e che si possa rilevare se la copia è stata modificata.^[È praticamente impossible garantire la vera immodificabilità dei dati informatici, il meglio che si può fare è usare strumenti che verificano se sono stati modificati o meno.]

I dati possono essere acquisiti da fonti diverse,^[Supporti materiali rimovibili, supporti integrati, da internet, dalla RAM, ecc.]
ed ogni fonte presenta caratteristiche diverse, che influenzano come i dati devono essere acquisiti.

Il primo problema da considerare è la quantità di dati che è possibile acquisire dal supporto.^[Più dati è possibile acquisire, è più si può parlare di una copia "conforme" all'originale.]
Nel caso di supporti materiali estraibili,^[Ad esempio, dischi rigidi o memorie *flash* (chiavette USB, schede SD, e SSD), ecc.] è generalmente possibile acquisire tutti i dati che contengono.^[È importante che il software per l'informatica forense implementi correttamente le specifiche tecniche relative al funzionamento di ogni tipo di supporto materiale, in modo che sia possibile usare i comandi di basso livello (ossia, che permettono di interagire direttamente con l'hardware) per garantire l'estrazione della maggiore quantità di informazioni possibili (ad esempio, informazioni diagnostiche). In ogni caso, è importante catturare anche lo spazio non allocato (ossia, non assegnato ad una partizione), e lo slack space (lo spazio libero all'interno delle singole partizioni), perché potrebbero contenere tracce di dati informatici (v. @Ferrazzano2014, p. 34).]
Nel caso di supporti materiali *embedded* (integrati, e quindi non estraibili)^[Ad esempio, smartphone, tablet, i supporti contenuti nei computer più recenti della Apple, dispositivi creati *ad hoc* che non usano parti standard come apparecchiature mediche, ecc.] e nel caso della *network forensics*^[Analisi forense di dati che sono resi disponibili mediante connessioni di rete. Ad esempio, siti internet, dati conservati su piattaforme cloud, dati conservati su altri sistemi informatici a cui non si ha un accesso diretto, ed è necessario usare protocolli di rete (SSH, SMB, ecc.) per accedervi, ecc.] tendono ad esporre meno dati.^[In entrambi i casi, non si ha accesso diretto al supporto materiale, ma è necessario comunicare con il software che viene eseguito sul dispositivo integrato o server remoto, e ha accesso ai dati. È generalmente sconsigliabile cercare di eseguire operazioni di forzatura delle misure di protezione per cercare di ottenere il pieno accesso a tutti i dati contenuti sul dispositivo. Queste operazioni vanno ad alterare il normale funzionamento del software che risiede sul dispositivo, e quindi potrebbero danneggiare o modificare i dati in maniera difficilmente prevedibile. Piuttosto, è preferibile accontentarsi di leggere i dati che il dispositivo mette naturalmente a disposizione, tenendo sempre a mente che le informazioni offerte potrebbero non essere complete o precise. Ad esempio, il protocollo HTTP (v. R. Fielding, M. Nottingham, J. Reschke, *RFC 9110: HTTP Semantics*, 2022, <https://httpwg.org/specs/rfc9110.html>) è largamente usato per trasferire singoli file. Tuttavia, il protocollo non richiede la comunicazione corretta degli elementi più basilari del file. Ad esempio, l'ultima modifica del file su disco non deve essere riprodotta nel campo *Last-Modified*, ed l'indicazione del nome del file quando viene scaricato è un'estensione allo standard base (v. J. Reschke, *RFC 6266: Use of the Content-Disposition Header Field in the Hypertext Transfer Protocol (HTTP)*, 2011, <https://httpwg.org/specs/rfc6266.html>).]
Nel caso di acquisizioni su sistemi che sono accesi, è possibile acquisire i contenuti della memoria volatile.^[È importante catturare l'intero contenuto della memoria. Quando la RAM si riempie, il sistema operativo trasferisce parte dei dati della memoria all'interno di un file o partizione di *swap* (nei sistemi Linux) o nel *pagefile* (nei sistemi Windows). Pertanto, è importante acquisire anche una copia di questi file. I contenuti della RAM includono i programmi in esecuzione, gli utenti connessi, le connessioni di rete attive, i dispositivi in uso, ecc. (v. @Ferrazzano2014, 36).]

Il secondo passo è impedire i dati originali non vengano modificati durante l'operazione di copia. Pertanto, il software per l'informatica forense deve usare tutte le precauzioni possibili per ridurre al minimo questo rischio.^[Ad esempio, quando si apre un file è preferibile usare la funzione *open* (v. @Man7_Open, sez. "DESCRIPTION") piuttosto che la funzione *fopen* (v. @Man7_Fopen, sez. "DESCRIPTION"), perché la prima permette di specificare in maniera esplicita le opzioni *O_RDONLY* (apertura in sola lettura) e *O_NOATIME* (divieto di cambiare la data di ultima apertura del file), e quindi di evitare eventuali operazioni in scrittura sul file. Ancora, quando si collega un supporto materiale, è importante usare prima il comando *blockdev* con l'opzione *--setro* per impedire qualsiasi operazione in scrittura prima di usare *mount* (v. @UtilLinux_Mount, sez. "COMMAND-LINE OPTIONS"), e poi il comando *mount* con le opzioni *ro* (sola lettura), *noatime* (divieto di aggiornare la data di ultima apertura), e *noexec* (divieto di eseguire file) (v. @Zanero2010, p. 73).]

Il terzo passo è l'esecuzione dell'operazione di copia. Di per sé, la copia è un'operazione meccanicamente semplice.^[Si parla di copia "bit-a-bit", ma in realtà sarebbe estremamente inefficiente copiare un bit alla volta. La copia viene eseguita leggendo e copiando blocchi di centinaia o migliaia di byte.] Il vero problema è la gestione degli errori di lettura da parte del software per l'informatica forense.^[Il software deve essere in grado di rilevare che sia avvenuto un errore, e deve chiedere all'utente come proseguire (se riprovare ad acquisire il dato, se saltare l'acquisizione del dato che ha causato l'errore e continuare l'operazione, o se interrompere l'operazione). Il programma deve fornire quante più informazioni utili all'utente, in modo che possa prendere una decisione informata. In ogni caso, nella traccia delle operazioni svolte il programma deve indicare ogni situazione che pur non essendo un errore, potrebbe influire negativamente sulla qualità dei dati, gli errori e le decisioni prese dall'utente, e le conseguenze di queste decisioni sulla completezza ed integrità dei dati (ad esempio, indicare quali sono i dati mancanti, o a che punto si è interrotta l'operazione).]

Infine, è necessario verificare la conformità della copia all'originale. Questa operazione viene svolta calcolando almeno due hash dei dati da acquisire, e dei dati acquisiti, e confrontando i risultati.^[Se i *digest* (risultato del calcolo dell'hash) sono identici, i dati sono identici (v. @Ferrazzano2014, p. 35).]
Questo è possibile solo se l'operazione di acquisizione è ripetibile, perché richiede una seconda lettura dei dati informatici già acquisiti.^[L'operazione di copia può essere irripetibile per sua natura, o per le circostanze del caso concreto. Ad esempio, si pensi all'acquisizione di dati da un supporto materiale che produce numerosi errori di lettura (potrebbe smettere di funzionare), o all'acquisizione della RAM (è una memoria volatile ed in continuo cambiamento), ecc. In tutti questi casi, potrebbe essere rischioso o inutile ripetere la lettura dei dati originali per verificare la conformità della copia. Piuttosto, in questi casi è importante documentare l'operazione anche con strumenti esterni rispetto al software (v. @Ferrazzano2014, pp. 35--36).]
La fase di verificazione non pone problemi significativi.^[In primo luogo, il software deve implementare correttamente la funzione di hash, ma questo non è un problema, perché la specificazione tecnica è dettagliata (v. @NIST_FIPS_180_4) ed esistono esempi ufficiali per verificare la correttezza dell'implementazione (v.National Institute of Standards and Technology, *Examples with Intermediate Values*, 2023, <https://web.archive.org/web/20230603170119/https://csrc.nist.gov/Projects/cryptographic-standards-and-guidelines/example-values>. Inoltre, si richiede che il software usi almeno due funzioni di hash per tre motivi. Il primo è perché esistono metodi per generare lo stesso *digest* anche se i valori in input sono diversi (è un attacco crittografico chiamato *chosen-prefix collision*, v. @Leurent2020, p. 1839), ma è improbabile che lo stesso metodo funzioni per due funzioni di hash diverse. Il secondo è che nel tempo le funzioni di hash diventano obsolete (v. National Institute of Standards and Technology, *NIST Transitioning Away from SHA-1 for All Applications*, 2022, <https://web.archive.org/web/20221216212335/https://csrc.nist.gov/news/2022/nist-transitioning-away-from-sha-1-for-all-apps>) ed è preferibile usare funzioni di hash più recenti, per rendere la propria applicazione a prova di futuro.]
Inoltre, il calcolo dell'hash della copia può essere anche ripetuto a distanza di tempo, per verificare se la copia abbia subito modificazioni.^[Basta ricalcolare l'hash della copia, e verificare se è cambiato rispetto ai valori che erano stati ottenuti durante la prima verificazione.]

### Conservazione

La conservazione [@Ferrazzano2014, 37] è la fase in cui i supporti che contengono i dati^[Sia i supporti su cui i dati sono stati acquisiti, sia eventualmente i supporti contenenti i dati originali.] vengono preparati per il trasporto, ed i dati vengono preparati per l'archiviazione di lungo termine.^[La conservazione è una fase del trattamento dei dati che non termina per poi essere sostituita da un'altra fase, ma piuttosto, continua ad essere rilevante fino a quando i dati continuano ad essere utili a fini processuali.]

Il codice di procedura fa riferimento alla custodia dei dati informatici in due articoli:

> Quando la custodia riguarda dati, informazioni o programmi informatici, il custode è altresì avvertito dell'obbligo di impedirne l'alterazione o l'accesso da parte di terzi, salva, in quest'ultimo caso, diversa disposizione dell'autorità giudiziaria.^[Art. 259 co. 2 c.p.p.]

> L'autorità giudiziaria fa estrarre copia dei documenti e fa eseguire fotografie o altre riproduzioni delle cose sequestrate che possono alterarsi o che sono di difficile custodia, le unisce agli atti e fa custodire in cancelleria o segreteria gli originali dei documenti, disponendo, quanto alle cose, in conformità dell'articolo 259. Quando si tratta di dati, di informazioni o di programmi informatici, la copia deve essere realizzata su adeguati supporti, mediante procedura che assicuri la conformità della copia all'originale e la sua immodificabilità; in tali casi, la custodia degli originali può essere disposta anche in luoghi diversi dalla cancelleria o dalla segreteria.^[Art. 260 co. 2 c.p.p.]

Per prevenire l'alterazione e l'accesso non autorizzato da parte di terzi, la soluzione più semplice ed efficace è di conservare i supporti materiali scollegati da sistemi informatici.^[In inglese, quando un sistema è completamente dalla rete, e isolato da altri sistemi, si parla di *air-gapping*. I vantaggi sono molteplici: non si consuma energia per mantenere acceso il disco, non serve effettuare la manutenzione dei server che contengono i dati, non ci si deve preoccupare di possibili attacchi informatici, perché l'unico modo per acquisire o danneggiare i dati è ottenere il possesso fisico del supporto, ecc. L'unico svantaggio è che è necessario verificare in maniera periodica il corretto funzionamento dei supporti su cui i dati sono archiviati.]

È possibile garantire l'immodificabilità dei dati usando dei supporti materiali particolari,^[Ad esempio, i supporti ottici (DVD, Blu-Ray), o il format LTO (*Linear-Tape Open*)]

Per prevenire l'alterazione accidentale dei dati^[Ossia, l'alterazione naturale, dovuta alla degradazione dei supporti materiali.] e la loro immodificabilità è possibile 

Il modo più semplice di garantire l'immodificabilità è di usare i supporti ottici, ma questa soluzione è particolarmente scomoda, per vari motivi:

- Per acquisire un disco rigido da 256 GB, servirebbero quasi 60 DVD.
- La velocità di scrittura/lettura su un supporto ottico è inferiore rispetto alle velocità raggiungibili da un disco rigido o disco a stato solido moderno, ed in generale, è preferibile usare velocità più basse per evitare errori di scrittura/lettura.
- Se il supporto ottico presenta anche un singolo errore di scrittura, non è possibile correggerlo, e deve essere buttato via e riscritto.
- I supporti ottici sono una tecnologia che è in tendenziale disuso. Questo significa che i supporti ottici disponibili sul mercato saranno probabilmente di qualità inferiore, e non dureranno a lungo.

Un'altra soluzione è di usare il formato *LTO* (*Linear-Tape Open*), che è sviluppato appositamente per l'archiviazione di grandi quantità di dati a lungo termine. In particolare, permette l'uso della crittografia autenticata, e permette di memorizzare dati in sola lettura. Il problema principale è che la tecnologia richiede hardware specializzato per essere usata.

È possibile raggiungere un compromesso utilizzando hardware generico, e software specializzato, che sia sviluppato in maniera da garantire l'integrità dei dati, cercare di riparare i dati automaticamente in caso di corruzione, ed evitare la sovrascrittura o aggiornamento dei dati già esistenti.

Essenzialmente, si tratta di programmi per la creazione di copie di *backup*, sviluppati dando priorità alle esigenze dell'informatica forense, e quindi preoccupandosi di garantire la correttezza e completezza dell'acquisizione, anche a scapito dell'efficienza dell'acquisizione (in termini di velocità, quantità di spazio usata) o altre funzionalità (come compressione dei dati, crittografia&hellip;). Più funzionalità si aggiungono, più il software diventa complesso, e più è difficile dimostrare che funziona correttamente.

### Catena di custodia

L'unica formalità per le cose sequestrate prevista dal codice di procedura è l'apposizione e rimozione di sigilli dell'ufficio giudiziario (artt. 260 e 261 c.p.p.), non si prevede la redazione di una catena di custodia. Tuttavia, è possibile prendere come riferimento il codice di procedura penale colombiano,[^CodiceProceduraPenaleColombiano] che regola espressamente la catena di custodia (art. 254 ss.).

[^CodiceProceduraPenaleColombiano]: \VediUrl{Congreso de la República de Colombia}{Ley 906 de 2004, Por la cual se expide el Código de Procedimiento Penal. (Corregida de conformidad con el Decreto 2770 de 2004)}{2004}{https://www.funcionpublica.gov.co/eva/gestornormativo/norma.php?i=14787}.

L'art. 254 indica la finalità e gli elementi che devono essere considerati:

> *Con el fin de demostrar la autenticidad de los elementos materiales probatorios y evidencia física, la cadena de custodia se aplicará teniendo en cuenta los siguientes factores: identidad, estado original, condiciones de recolección, preservación, embalaje y envío; lugares y fechas de permanencia y los cambios que cada custodio haya realizado. Igualmente se registrará el nombre y la identificación de todas las personas que hayan estado en contacto con esos elementos.*

Per quanto riguarda la prova informatica, è importante indicare tutti gli elementi indicati dall'articolo sia per i supporti materiali, sia per i dati informatici, considerando le rispettive peculiarità.

L'identificazione:

- Di un supporto materiale avverrà con l'indicazione del numero seriale.
- Dei dati informatici avverrà riferendosi al loro hash.

Lo stato originale:

- Per il supporto materiale è la condizione in cui viene rinvenuto. Ad esempio, "inserito in un computer trovato acceso", oppure "disco rigido esterno, non collegato ad un computer". Queste informazioni possono essere utili ai fini dell'analisi, perché rappresentano le ultime cause di modificazione che sono intervenute subito prima dell'acquisizione.
- Per i dati è il log dell'acquisizione, che indicherà informazioni come quando l'operazione è stata compiuta, su quale supporto, quanti dati sono stati copiati, se sono avvenuti errori di lettura o verificazione, l'hash dei dati&hellip;

La modalità di acquisizione, conservazione, imballaggio e trasporto:

- Per i supporti materiali si indicano le operazioni che sono state svolte per la loro estrazione, e come sono stati conservati per proteggerli da danni.
- Per i dati informatici si indicano le modalità usate per acquisire e archiviare i dati, indicando la loro idoneità a conservare i dati originali, creare una copia conforme, e assicurare l'integrità dei dati nel tempo, ed indicando anche le circostanze pratiche e concrete ostative a queste finalità.

Ancora, si devono indicare i luoghi e date in cui i supporti e dati sono stati conservati, i cambiamenti che ogni custode ha apportato, il nome ed identificazione di tutte le persone che sono entrate in contatto con questi elementi.

La redazione della catena di custodia è di responsabilità dei pubblici ufficiali (art. 255):

> *La aplicación de la cadena de custodia es responsabilidad de los servidores públicos que entren en contacto con los elementos materiales probatorios y evidencia física.*

Per identificare il custode e le persone che entrano in contatto con i dati informatici, si possono usare le firme digitali. Ogni atto che entra a fare parte della catena di custodia viene firmato congiuntamente dal PU responsabile e da tutti gli altri partecipanti. Data la presenza del PU, si tratterà di firma digitale autenticata (art. 25 c.a.d.).

Pertanto, sarà possibile acquisire anche una firma autografa con modalità digitali, oltre che la firma digitale eseguita con un certificato elettronico con chiave privata. La seconda modalità è preferibile, dato che falsificare la firma con certificato elettronico è praticamente impossibile.

La catena di custodia inizia ad essere redatta dal primo pubblico ufficiale che entra in contatto con il supporto o i dati durante le indagini (art. 257):

> *El servidor público que, en actuación de indagación o investigación policial, hubiere embalado y rotulado el elemento material probatorio y evidencia física, lo custodiará.*

Le norme successive regolano il trasferimento del "materiale probatorio", in modo che arrivi il prima possibile al perito, che dovrà controllare l'integrità degli elementi, e procedere all'analisi (artt. 258 a 261):

> [Art. 258] *El funcionario de policía judicial o el servidor público que hubiere recogido, embalado y rotulado el elemento material probatorio y evidencia física, lo trasladará al laboratorio correspondiente* \Omissis{}
>
> [Art. 259] *El servidor público de la oficina de correspondencia o la que haga sus veces, sin pérdida de tiempo* \Omissis{} *entregará el contenedor al perito que corresponda según la especialidad.*
>
> [Art. 260] *El perito que reciba el contenedor dejará constancia del estado en que se encuentra y procederá a las investigaciones y análisis del elemento material probatorio y evidencia física, a la menor brevedad posible* \Omissis{}

Si prevede che tutti i pubblici ufficiali sono responsabili per la conservazione degli elementi, mentre ne sono in possesso (art. 261). Per quanto riguarda i dati informatici, questo significa che i soggetti devono ricalcolare l'hash della copia, per verificare che non sia cambiato rispetto all'hash iniziale. Viceversa, i supporti informatici non devono essere verificati, si deve solo garantire la loro migliore conservazione dal punto di vista puramente materiale.

> *Cada servidor público de los mencionados en los artículos anteriores, será responsable de la custodia del contenedor y del elemento material durante el tiempo que esté en su poder, de modo que no pueda ser destruido, suplantado, alterado o deteriorado.*

Questi articoli sembrano tutti ispirati da un *favor*, una preferenza per il trattamento scientifico di quanto trovato durante le investigazioni da parte del perito. La PG ha il solo compito di assicurare le fonti di prova, la PG ed i soggetti intermedi hanno il compito di garantire la corretta conservazione degli elementi raccolti, e la perizia rappresenta la regola generale. Questa impostazione è particolarmente adeguata ai dati digitali, dato che possono essere modificati con facilità ad ogni passaggio di mani, e rilevare queste modifiche non è assolutamente una scienza certa.

Si dispone la conservazione degli elementi dopo la loro analisi, in modo che possano essere recuperati in qualsiasi altro momento per analisi successive, o eventualmente, la loro distruzione (art. 262):

> *Los remanentes del elemento material analizado, serán guardados en el almacén que en el laboratorio está destinado para ese fin. Al almacenarlo será previamente identificado de tal forma que, en cualquier otro momento, pueda ser recuperado para nuevas investigaciones o análisis o para su destrucción, cuando así lo disponga la autoridad judicial competente.*

Se i dati devono essere conservati a lungo termine, è opportuno proteggerli con uno schema di crittografia autenticata, e di conservare le password per decrittarli su carta, in un luogo diverso rispetto ai dati. Questo presenta vari vantaggi:

- Se i dati venissero sottratti per qualsiasi motivo, non potrebbero essere letti senza la password.
- Viceversa, per distruggere i dati in maniera irreversibile è sufficiente distruggere la password.
- L'unica persona che potrebbe modificare i dati è chi possiede la password. Tuttavia, basterebbe ricalcolare gli hash dei dati prima di una nuova analisi, e confrontarli con i primi hash memorizzati nella catena di custodia per rilevare una qualsiasi manipolazione.
- Si può procedere periodicamente ad una verifica dell'integrità dei dati, provando a decrittarli. Se la copia criptata dei dati è cambiata per qualsiasi motivo (deterioramento del supporto su cui sono memorizzati, o manipolazione intenzionale), la decrittazione fallirà.

Si prevede che ad ogni passaggio, la persona dia un rendiconto dello stato degli elementi, e si identifichi personalmente (artt. 263 e 264):

> [Art. 263] *Toda persona que deba recibir un elemento material probatorio y evidencia física, antes de hacerlo, revisará el recipiente que lo contiene y dejará constancia del estado en que se encuentre.*
>
> [Art. 264] *Toda persona que aparezca como embalador y rotulador, o que entrega o recibe el contenedor de elemento material probatorio y evidencia física, deberá identificarse con su nombre completo y apellidos, el número de su cédula de ciudadanía y el cargo que desempeña. Así constará en el formato de cadena de custodia.*

Come già discusso, la prima disposizione consiste nella verifica dell'integrità del supporto e dei dati, la seconda può essere integrata con l'apposizione di una firma digitale, che sia legata all'identità fisica della persona.

La catena di custodia deve essere certificata (art. 265):

> *La policía judicial y los peritos certificarán la cadena de custodia.*
>
> *La certificación es la afirmación de que el elemento hallado en el lugar, fecha y hora indicados en el rótulo, es el que fue recogido por la policía judicial y que ha llegado al laboratorio y ha sido examinado por el perito o peritos. Además, que en todo momento ha estado custodiado.*

Le attività descritte dal codice consistono in una verifica formale della veridicità di quanto scritto nella catena, ma se la catena di custodia è redatta in forma elettronica, e si usano le firme digitali, si può andare oltre, ed usare una versione semplificata dell'algoritmo di *blockchain*. L'essenza della blockchain è di essere un registro immutabile di valori, condiviso fra più persone. Nel caso dei Bitcoin, viene usato per tenere traccia delle transazioni effettuate fra vari indirizzi. Ma la stessa tecnologia può essere usata per tenere traccia delle operazioni compiute dai vari soggetti.

### Analisi e valutazione

- definizione, 26
- metodi di analisi comprovati, trasparenti, corretti, 65 ss.

### Presentazione e contraddittorio

- definizione, 27
- obiettivo, 68
- rapporto peer-review e contraddittorio, 69--70
- richiamo a scientificità informatica, 70--73

## Definizione di software

I programmi informatici sono a loro volta dati informatici, ma con la particolarità che contengono istruzioni su come modificare altri dati informatici.^[In ultima analisi, sia i programmi che i dati sono sempre sequenze di bit. L'unica differenza è che i programmi possono essere anche eseguiti. Questo significa che all'interno dell'informatica forense, sia l'oggetto di studio, sia gli strumenti di analisi hanno la stessa natura, e l'unica differenza è la funzione che svolgono.] Queste istruzioni possono essere espresse come codice sorgente, o codice macchina. Il codice sorgente è definito come [@FSF-What-is-free-software]:

> *[T]he preferred form of the program for making changes in. Thus, whatever form a developer changes to develop the program is the source code of that developer's version.*^[La rappresentazione del programma preferita per apportare cambiamenti. Pertanto, qualsiasi rappresentazione lo sviluppatore cambi al fine di sviluppare il programma è il codice sorgente di quella versione del programma.]

È preferibile usare una definizione espansiva del codice sorgente, che includa sia il codice propriamente detto,^[File di testo che contengono istruzioni scritte in un determinato linguaggio di programmazione.] sia qualsiasi altro file che è necessario o utile per l'uso del programma.^[Ad esempio, file di configurazione, o file che contengono comandi per compilare ed installare il programma. Più in generale, qualsiasi file la cui presenza o contenuto altera il comportamento del programma in qualsiasi modo (ad esempio, incluso anche solo come i dati vengono presentati all'utente all'interno di un'interfaccia grafica) deve essere considerato parte del codice sorgente di quel programma.]

Il codice macchina consiste in file binari^[L'espressione "file binari" potrebbe sembrare ridondante, perché tutti i file sono espressi come una sequenza di valori binari. Viene normalmente usata per evidenziare la differenza fra "file di testo", che contengono solo le sequenze di bit che corrispondono a caratteri, e "file binari", che invece possono contenere qualsiasi sequenza di bit.] che contengono istruzioni che possono essere direttamente eseguite dalla macchina.^[Per "macchina" si intende più precisamente il processore, e le istruzioni che un processore può comprendere si chiama *instruction set* (insieme di istruzioni).] Un compilatore è un programma che trasforma il codice sorgente scritto in un certo linguaggio di programmazione in codice macchina.

Rispetto al codice sorgente, a seguito della compilazione il codice macchina perde la struttura originale,^[Ad esempio, il codice sorgente può essere diviso in numerosi file, ma la compilazione risulta in un singolo file; informazioni come il nome delle variabili, dei valori nelle strutture di dati, delle funzioni, ecc., sono sostituite da riferimenti ad indirizzi di memoria, perché è l'unico formato che il processore comprende; i commenti che spiegano come il codice funziona vengono eliminati; ecc. Il rapporto fra codice sorgente e codice macchina è simile al rapporto che esiste fra il processo di cognizione ed il processo di esecuzione. Il primo si conclude in una sentenza che indica i motivi di fatto e diritto (il "perché") per cui si deve eseguire il dispositivo (il "cosa"). Il secondo è solo interessato alla concreta esecuzione del dispositivo, e non è interessato a come si è arrivati a quella conclusione.]
risulta "offuscato",^[La perdita della struttura originale è già una prima forma di "offuscamento" del codice sorgente. Inoltre, il compilatore può riscrivere le istruzioni del codice macchina in modo da raggiungere lo stesso risultato, ma in maniera più efficiente (*compiler optimizations*), che rende ancora più difficile capire il funzionamento del codice. Ad esempio, un'istruzione usata per calcolare gli indirizzi di memoria può essere anche usata per compiere calcoli aritmetici (v. B. Visness, *Using the LEA instruction for arbitrary arithmetic*, 2022, <https://web.archive.org/web/20220630160511/https://handmade.network/forums/articles/t/7111-using_the_lea_instruction_for_arbitrary_arithmetic>). Ancora, è possibile introdurre del vero e proprio offuscamento intenzionale, ricombinando il codice in maniera da rendere estremamente difficile capire il suo funzionamento (ad esempio, v. xoreaxeaxeax, *movfuscator*, 2020, <https://github.com/xoreaxeaxeax/movfuscator/tree/ea37dae93fbcd93f642c71a53878da588bd7ddb4>).]
ed il codice macchina non è interoperabile.^[Il codice macchina consiste in un insieme di possibili istruzioni (*instruction set*), che vengono codificate in codice binario secondo un certo formato. L'*instruction set* ed il formato varia a seconda dell'architettura del processore (x86, AMD64, ARM, etc.), a seconda della generazione (i processori più nuovi supportano più istruzioni), ecc. Pertanto, mentre il codice sorgente può sempre essere ricompilato, e funzionare su più processori, il codice macchina è tendenzialmente legato all'architettura per cui è stato compilato.]

Normalmente, gli utenti sono solo interessati ad eseguire i programmi, e quindi sono interessati solo ad ottenere il codice macchina. Tuttavia, se l'utilizzatore è anche interessato a studiare il funzionamento del programma, gli effetti della compilazione diventano ostacoli significativi, e non avere accesso al codice sorgente è un enorme svantaggio.^[È possibile cercare di ricostruire il funzionamento del programma usando il metodo di ragionamento induttivo, e procedendo a tentativi, ma le conclusioni sono incerte. Se si avesse a disposizione il codice sorgente, sarebbe possibile usare il metodo di ragionamento deduttivo, e giungere più rapidamente a conclusioni più solide.]

## Inquadramento dei programmi nel sistema giuridico

Il diritto d'autore si applica anche ai programmi per elaboratore, perché vengono espressamente equiparati ad un'opera letteraria (art. 1 co. 2 l.d.a.),^[Legge 22 aprile 1941, n. 633, "Protezione del diritto d'autore e di altri diritti connessi al suo esercizio."] indipendentemente dal fatto che il software sia espresso come codice sorgente o codice macchina.^[Come indicato espressamente dall'art. 10(1) dell'accordo TRIPs (v. <https://web.archive.org/web/20230929163013/https://biblioteche.cultura.gov.it/it/documenti/Servizio_III/4_accordo_trips_1994_x1x.pdf>) e desumibile dall'art. 4 del trattato OMPI sul diritto d'autore (v. <https://web.archive.org/web/20231230130759/https://biblioteche.cultura.gov.it/it/documenti/Servizio_III/5_trattato_ompi_sul_diritto_d_autore_wct_1996_x1x.pdf>).]

Da questo inquadramento derivano varie implicazioni per il software in generale.

La prima è il "diritto esclusivo" dell'autore di creare copie dell'opera, che è prevista in generale dall'art. 13 l.d.a., e con specifico riguardo per i "programmi per elaboratore" all'art. 64-*bis* lett. *a* l.d.a.^[Pertanto, anche se è tecnicamente sempre possibile duplicare i dati di cui è composto il software informatico, da un punto di vista legale questa operazione è vietata.]

---

Anche se il divieto di creare copie del software non venisse menzionato espressamente nel contratto di licenza d'uso concluso fra lo sviluppatore e l'utilizzatore, questa possibilità sarebbe già esclusa dalla legge sul diritto d'autore, che prevede il 
- divieto di copie, 49
- misure di protezione, 74
- reverse engineering, 
- altre misure di protezione, 89

----

- necessità di studiare il funzionamento dei programmi
- necessità di garantire la possibilità 

L'informatica forense è interessata allo studio del funzionamento di due categorie di programmi:

La l.d.a. afferma espressamente il diritto di poter studiare il funzionamento del software, anche se proprietario, e sanziona le clausole contrattuali che vietano questa possibilità con la nullità (art. 64-*ter*, co. 3):

> Chi ha il diritto di usare una copia del programma per elaboratore può, senza l'autorizzazione del titolare dei diritti, osservare, studiare o sottoporre a prova il funzionamento del programma, allo scopo di determinare le idee ed i principi su cui è basato ogni elemento del programma stesso \Omissis{} Le clausole contrattuali pattuite in violazione del presente comma e del comma 2 sono nulle.

Inoltre, la l.d.a. ammette la possibilità di eseguire il *reverse-engineering* ("ingegneria a ritroso"). Laddove la *software engineering* (ingegneria informatica) costruisce il software, la reverse-engineering serve a capire come il software è stato costruito. Consiste nell'analisi del codice macchina, già compilato, per riprodurre le funzionalità del codice sorgente originale, di cui non si dispone. Tuttavia, questa facoltà è limitata al solo scopo dell'interoperabilità (art. 64-*quater*, co. 1):

> L'autorizzazione del titolare dei diritti non è richiesta qualora la riproduzione del codice del programma di elaboratore e la traduzione della sua forma ai sensi dell'art. 64-bis, lettere a) e b), compiute al fine di modificare la forma del codice, siano indispensabili per ottenere le informazioni necessarie per conseguire l'interoperabilità, con altri programmi, di un programma per elaboratore creato autonomamente purché siano soddisfatte le seguenti condizioni:
>
> a) le predette attività siano eseguite dal licenziatario o da altri che abbia il diritto di usare una copia del programma oppure, per loro conto, da chi è autorizzato a tal fine;
> b) le informazioni necessarie per conseguire l'interoperabilità non siano già facilmente e rapidamente accessibili ai soggetti indicati alla lettera a);
> c) le predette attività siano limitate alle parti del programma originale necessarie per conseguire l'interoperabilità.

L'interoperabilità è definita come la "[c]apacità di due o più sistemi, reti, mezzi, applicazioni o componenti, di scambiare informazioni tra loro e di essere poi in grado di utilizzarle."[^DefinizioneInteroperabilità] Il software di analisi che viene usato nell'informatica forense rientra a pieno titolo all'interno di questa definizione, perché è interessato ad estrarre ed utilizzare informazioni da sistemi, reti, e altre applicazioni.

[^DefinizioneInteroperabilità]: \VediUrl{Treccani.it}{Interoperabilità}{2008}{https://www.treccani.it/enciclopedia/interoperabilita_\%28Enciclopedia-della-Scienza-e-della-Tecnica\%29/}.

Il limite fondamentale alla reverse-engineering è indicato nel co. 2 dello stesso articolo. Le informazioni ottenute non possono essere usate per "lo sviluppo, la produzione o la commercializzazione di un programma per elaboratore sostanzialmente simile nella sua forma espressiva, o per ogni altra attività che violi il diritto di autore".

L'obiettivo della norma è di prevenire la concorrenza sleale (mediante la creazione di software essenzialmente identico a software già esistente), e la pirateria (la rimozione delle misure di protezione richiede l'uso di tecniche di reverse-engineering). È estremamente improbabile che il software di analisi sia "sostanzialmente simile nella sua forma espressiva" rispetto al software analizzato, perché hanno finalità radicalmente diverse. Il software di analisi non può essere usato per svolgere le stesse funzioni del programma analizzato, serve solo ad estrarre ed elaborare informazioni che possono essere utili all'interno di un processo.

Infine, il co. 3 sanziona le clausole contrattuali che vietano il reverse-engineering (se eseguito con la specifica finalità dell'interoperabilità) con la nullità.


## Software libero

### Definizione

<!-- soltanto la definizione, l'importanza di ogni caratteristica è analizzata dopo -->

- esecuzione programma, 73--74
- accesso codice sorgente, 76
- ridistribuzione copie, 82

### Licenze libere

- concessione dei diritti mediante diritto d'autore, 94
- licenze nel diritto italiano, 96

### Licenza GPL

- 98 ss.

## Confronto software proprietario e libero

- libertà esecuzione programma, 74--76
- importanza accesso codice sorgente, 77
- giurisprudenza amministrativa su decisioni algoritmiche, 80--82
- ridistribuzione copie con modifiche, 82--83, 47--50
- resilienza, 85
- imparzialità, 86
- trasparenza e contraddittorio, 84
- altre osservazioni, 87--94
- difficoltà studio e reimplementazione (segreti industriali, brevetti, 89)
