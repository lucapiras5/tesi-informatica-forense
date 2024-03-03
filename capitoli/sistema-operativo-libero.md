# Software libero per l'informatica forense

## Introduzione

I capitoli precedenti hanno dimostrato le potenzialità del software libero per l'informatica forense da un punto di vista puramente teorico, e come il software libero fornisce la migliore risposta alle esigenze tecniche e legali dell'informatica forense.

Fortunatamente, questi vantaggi non sono destinati a rimanere lettera morta, perché esiste software libero che può essere utilizzato per l'informatica forense.
Questo capitolo darà un resoconto non esaustivo^[Cercare di individuare tutto il software esistente per ciascuna branca della *digital forensics* andrebbe fuori dall'ambito della trattazione. In ogni caso, il software è in continua evoluzione, e le considerazioni svolte potrebbero non valere nel futuro. Pertanto, ci si limiterà a svolgere considerazioni generiche.] del software libero esistente, incluso l'uso di sistemi operativi interamente liberi.

Si potrebbe dire che l'informatica forense è una disciplina che studia e gestisce una serie di *black boxes*:^[Nel gergo dell'informatica, una *black box* (scatola nera) è uno strumento di cui si può osservare il comportamento esterno, ma non si conosce l'esatto meccanismo di funzionamento interno. Non si sta facendo riferimento alle "scatole nere" che vengono recuperate a seguito di incidenti di aeromobili o imbarcazioni (che comunque possono essere di interesse per l'informatica forense, se contengono dati digitali).] l'hardware e software oggetto di analisi, e l'hardware e software con cui viene condotta l'analisi, le reti e protocolli con cui le macchine comunicano fra di loro&hellip;

Allo stesso tempo, si è dimostrato come l'informatica forense deve soddisfare le esigenze del contraddittorio nel processo, e quindi si deve essere in grado di spiegare nella maniera più completa e dettagliata possibile come si è giunti ad una certa conclusione. Per questo motivo, si è sostenuta l'utilità del software libero per le operazioni di analisi.

## Sistema operativo libero

Il sistema operativo è il software^[Meglio, "collezione di software", dato che i sistemi operativi moderni sono complessi, e composti da numerosi programmi. Ad esempio, il progetto "Linux From Scratch" offre una guida su come creare un sistema Linux partendo da zero, e compilando tutto il software necessario usando il codice sorgente. V. @LinuxFromScratch] più "fondamentale". Come qualsiasi altro programma, deve essere installato ed eseguito,^[Spesso il sistema operativo è già installato sui computer, e al primo avvio deve soltanto essere configurato per la prima volta. In ogni caso, il sistema operativo è il primo programma che viene eseguito quando il computer viene avviato.] ma la sua funzione è di fornire tutti gli elementi necessari per il funzionamento di altri programmi.^[Ad esempio, il sistema operativo rileva e gestisce tutti i componenti hardware connessi al computer (inclusi i supporti di memoria), gestisce la memoria del computer e l'esecuzione dei vari programmi&hellip;]

Ancora, così come esiste software libero, esistono anche sistemi operativi (quasi) interamente liberi.^[In alcuni casi, è necessario includere software non-libero per far funzionare alcuni componenti hardware, come la connessione Wi-Fi, o la scheda video. Ad esempio, il programma per installare la distribuzione GNU/Linux Debian tradizionalmente non includeva questo tipo di software, perché per motivi ideologici, voleva rimanere un sistema composto interamente da software libero. L'installazione di questo software doveva essere fatta manualmente, in modo che l'utente sia pienamente consapevole che il sistema contiene componenti non-liberi. Tuttavia, seguito di una discussione nel progetto il programma per l'installazione è stato modificato, ed il programma per l'installazione di Debian 12 adesso include anche i componenti non-liberi. V. Autori di Debian Wiki, *Firmware*, 2023, <https://web.archive.org/web/20230720195706/https://wiki.debian.org/Firmware>.] Un sistema operativo libero^[Fatta salva l'eccezione dei componenti non-liberi, il cui impatto sul funzionamento del sistema è limitato (sono necessari per usare alcuni componenti hardware, ma non pregiudicano il corretto funzionamento del software).] presenta tutti i vantaggi tipici del software libero: in particolare, la possibilità di studiare il funzionamento del sistema,^[Dato che si ha accesso al codice sorgente, è possibile verificare come il sistema operativo è stato progettato, e valutare la presenza di elementi che possono influire in positivo o negativo sull'affidabilità delle analisi. Dal punto di vista processuale, pertanto il margine di discussione all'interno del contraddittorio è molto più ampio rispetto al software proprietario. Si riduce così il numero di *black boxes* all'interno del procedimento, perché almeno gli strumenti di analisi sono liberamente esaminabili.] e la possibilità di riprodurre il sistema, e quindi ripetere le analisi.^[Dato che le licenze libere concedono agli utilizzatori il diritto di riprodurre il software, è possibile creare una copia dell'intero ambiente di analisi che è stato usato per svolgere le analisi (inteso come sistema operativo e programmi installati) offrirlo alla controparte, e conservarlo nel caso in cui sia necessario ripetere le analisi in un momento successivo.]

I sistemi operativi liberi con la maggiore utilizzazione sono le distribuzioni GNU/Linux.^["GNU" è il nome del sistema operativo (il software di base necessario per il funzionamento del sistema, come un programma per eseguire comandi, editor di testo, compilatori, programmi per visualizzare i manuali&hellip;), "Linux" è il nome del *kernel* (il componente del sistema operativo che gestisce l'hardware, come supporti di memoria, schede audio, video e di rete, la RAM, tastiera, mouse, altre periferiche&hellip;). Spesso si usa solo il termine "Linux" per riferirsi in maniera generica alle distribuzioni Linux, ma è improprio. Non esiste "un" sistema operativo chiamato Linux, e "Linux" di per sé non è un sistema operativo, ma uno dei componenti necessari per un sistema operativo. Per dettagli, v. @Stallman-Linux-and-gnu] Generalmente, ogni distribuzione offre un proprio *package manager* (gestore di pacchetti). ^[Ad esempio, Debian e Ubuntu usano APT, Fedora usa DNF, Arch Linux usa Pacman&hellip;] Un "pacchetto" contiene del software, e le istruzioni per installarlo, e vengono generalmente preparati dagli stessi sviluppatori della distribuzione,^[Alcune distribuzioni offrono soltanto ed esclusivamente software libero (per una lista, v. <https://www.gnu.org/distros/free-distros.en.html>); altre permettono di installare anche software proprietario, se l'utente lo desidera.] ma è possibile per sviluppatori terzi creare i propri pacchetti.^[Ad esempio, il software proprietario viene spesso reso disponibile per Linux come un pacchetto in formato DEB e/o RPM, che possono essere installati rispettivamente su Ubuntu e Fedora con APT e DNF.]

Distribuzioni diverse usano strategie diverse, ciascuna con i propri vantaggi e svantaggi:

- Le distribuzioni *fixed-point* sono stabili e ben testate,^[Dato che i rilasci sono infrequenti, è possibile garantire che il software contenga meno bug possibili, e fra i rilasci, si può contare sul fatto che installare il software è un'azione riproducibile, perché non ci sono cambiamenti.] ma contengono software datato.^[Distribuzioni che aggiornano i pacchetti in maniera "sincrona": aggiornare la distribuzione permette anche di aggiornare i pacchetti, ma fino al rilascio della nuova versione della distribuzione (che potrebbe avvenire dopo mesi o anni), i pacchetti ricevono solo aggiornamenti relativi per la sicurezza e bug particolarmente gravi.]
- Le distribuzioni *rolling*^[Distribuzioni che aggiornano i pacchetti in maniera "asincrona": ogni pacchetto può essere aggiornato appena viene rilasciata una nuova versione.] offrono il software più recente, al costo di una minore stabilità e riproducibilità.^[Data la frequenza degli aggiornamenti, non è possibile verificare il corretto funzionamento di ogni pacchetto, e installare o aggiornare il sistema in momenti diversi produce risultati diversi, perché non è possibile prevedere in anticipo quali pacchetti saranno installati.]
- Nix è un *package manager* che usa un paradigma particolare [La descrizione di Nix è oggetto di una tesi di dottorato, v. @Dolstra2006], che garantisce la piena riproducibilità dell'installazione del sistema.^[Si può sempre installare la versione più recente del software, ma se causa problemi, è sempre possibile effettuare un *rollback* (tornare indietro) ad una versione precedente del sistema che funziona correttamente. Inoltre, è sempre possibile installare qualsiasi versione dello stesso software, o anche più versioni in parallelo, senza conflitti fra le varie installazioni.] NixOS è una distribuzione Linux che usa Nix come il suo *package manager* [@Dolstra2008, 1].

Nel tempo, data la flessibilità offerta dalle distribuzioni GNU/Linux, sono state create delle distribuzioni specializzate per l'informatica forense:

- @Zanero2010, 69 ss. -- distribuzioni live per l'analisi forense

## Zanero

@Zanero2010, 45 ss. -- architettura per processare grandi quantità di dati

@Zanero2010, 101 ss. -- architetture per raccogliere malware

- migliore qualità dd
- paper su perché usare linux

## Software libero per l'acquisizione di dati

Il pre-requisito per analizzare i dati è la loro corretta acquisizione. L'acquisizione è generalmente un atto irripetibile^[Perché esiste sempre un rischio, anche minimo, che il supporto materiale subisca modifica durante l'acquisizione (art. 117 disp. att. c.p.p.). Inoltre, esiste il rischio che i dati si danneggino o siano cancellati, e quindi di irripetibilità sopravvenuta.] e pertanto è assolutamente necessario garantire la massima trasparenza e affidabilità dell'operazione usando software libero.^[L'accesso al codice sorgente e la possibilità di distribuire liberamente copie garantiscono la trasparenza, e permettono di valutare in maniera consapevole se il software sia affidabile o meno. Viceversa, nel caso di software proprietario ci si deve affidare ciecamente al prodotto che viene fornito, dato che non è possibile sapere in maniera altrettanto trasparente come è stato sviluppato.]

### Supporti materiali

Se i dati risiedono su un supporto materiale che può essere collegato ad un computer^[Ad esempio, un *hard disk* interno o esterno, memorie flash USB o SD, supporti ottici&hellip;] esistono vari programmi.

Il più semplice è *GNU dd* [V. sez. 11.2, "dd: Convert and copy a file" in @GNUCoreutilsManual].
Il vantaggio principale di *dd* è la sua ubiquità. Dato che è un comando standard sui sistemi operativi GNU/Linux, se un computer può eseguire una distribuzione Linux, può anche usare *dd*.^[Fa parte delle *GNU coreutils*, e la sua presenza è richiesta dallo standard *Linux Standard Base*.]
Lo svantaggio principale è la sua semplicità. *dd* è un comando generico, e non offre meccanismi sofisticati di gestione degli errori, o informazioni diagnostiche dettagliate.^[Di default, *dd* si arresta dopo il primo errore di lettura. È possibile usare le opzioni *conv=noerror,sync* affinché *dd* continui a seguito di errori, e riempia le parti che non è stato possibile leggere con zeri.]

*ddrescue* è un comando specializzato per copiare dati da supporti che presentano errori di lettura, ed usa un algoritmo creato *ad hoc* per cercare di copiare quanti più dati possibile, e causare quanti meno danni possibile al supporto, durante il suo funzionamento [V. sez. 4, "Algorithm" in @GNUddrescue]. 
Inoltre, produce anche un *mapfile*, che contiene informazioni diagnostiche dettagliate sullo stato di ogni settore letto dal disco [V. sez. 8, "Mapfile structure", in @GNUddrescue].

### Acquisizione di embedded devices

Se i dati sono su *embedded devices*^[Intesi come dispositivi per cui non è possibile estrarre il supporto di memoria che contiene i dati. Ad es., smartphones, apparecchiature mediche, autoveicoli&hellip;] è necessario controllare le opzioni disponibili, caso per caso. In generale, si possono seguire due strade.

Se il dispositivo usa un sistema operativo basato su GNU/Linux,^[Ad esempio, Android.] ed è possibile eseguire comandi su quel dispositivo^[Ad esempio, sui dispositivi Android, per mezzo di Termux, v <https://wiki.termux.com/wiki/Main_Page>.], è possibile usare il dispositivo stesso per calcolare l'*hash* dei dati prima della copia, e trasferire i dati all'esterno del dispositivo.

Il vantaggio di questa modalità è che si può presupporre che i risultati siano affidabili, dato che le operazioni di acquisizione sono state compiute con software libero.
Gli svantaggi sono che si possono estrarre solo file, e non l'intero supporto, e che l'esecuzione dei comandi modifica lo stato del dispositivo, rendendo questa operazione intrinsecamente irripetibile.

Se il produttore del dispositivo offre uno strumento *ad hoc* per l'estrazione di dati o creazione di backup,^[Ad esempio, *iTunes* per gli iPhone], è possibile eseguirlo all'interno di una macchina virtuale.^[Ad esempio, con *VirtualBox* o *QEMU*. È preferibile usare una macchina virtuale in modo da tenere traccia dell'ambiente che è stato usato per l'acquisizione dei dati.]

Il vantaggio di questa modalità è che usare strumenti ufficiali, anche se proprietari, è una garanzia che i risultati dell'estrazione siano affidabili.
Lo svantaggio è che la quantità dei dati estraibili potrebbe essere ridotta. 

Nel campo della *mobile forensics* esistono strumenti di estrazione di terze parti proprietari, ma è preferibile evitarli.
Anche se sono in grado di estrarre più dati, si pone il problema dell'affidabilità dell'acquisizione.

## Network forensics

Per la *network forensics*, Wireshark (licenza GPL v2)^[V. <https://www.wireshark.org>.] è un software maturo, in sviluppo da più di 20 anni, e permette di acquisire ed analizzare il traffico di rete.

In particolare, può essere usato per catturare le pagine ed i dati scaricati per mezzo di un *web browser* (Firefox o Chrome). Con alcuni accorgimenti aggiuntivi, è possibile usare Wireshark per compiere un'acquisizione forense di pagine web, inclusi i contenuti sul *cloud*.^[Per impostare Wireshark in modo che possa catturare il traffico generato dal *browser*, v. sez. "Using the (Pre)-Master-Secret" in <https://web.archive.org/web/20230724183942/https://wiki.wireshark.org/TLS>. Successivamente, è utile visitare il sito internet di una testata giornalistica prima e dopo dell'acquisizione, in modo da dimostrare il momento in cui i dati sono stati catturati. Infine, è utile eseguire le operazioni all'interno di una macchina virtuale, e registrare lo schermo, in maniera da lasciare traccia delle operazioni svolte.]

Un'altra strada per copiare dati salvati sul cloud è usare *Rclone* (licenza MIT)^[V. <https://rclone.org/>.] che permette di copiare dati da un grande numero di servizi di *cloud storage*.^[Ad esempio, Dropbox, Google Drive, OneDrive&hellip; v. <https://rclone.org/overview/>.]

## Conservazione

Dopo che i dati sono stati acquisiti, è necessario garantire la loro corretta conservazione.

Programmi come *BorgBackup* (licenza BSD)^[V. <https://www.borgbackup.org/>.] e *Restic* (licenza BSD)^[V. <https://restic.net/>.] permettono di creare copie di backup dei dati, di proteggere i backup con la crittografia,^[In modo da garantire la confidenzialità dei dati, anche nel caso di un *data breach*.] e di verificare la loro integrità.^[In modo che sia possibile verificare che i dati non siano variati per *bit rot* o modifiche intenzionali da parte di terzi, anche a distanza di tempo.]

I dati possono essere salvati su *filesystem* liberi e specializzati per l'archiviazione dei file, come *OpenZFS* (licenza CDDL), che controlla automaticamente l'integrità dei dati.^[Per una dimostrazione pratica di come ZFS rileva e corregge i dati danneggiati, v. <https://web.archive.org/web/20220516050411/https://ubuntu.com/tutorials/testing-the-self-healing-of-zfs-on-ubuntu>.]

La catena di custodia può essere redatta con *Git*. Ogni operazione viene registrata in un *commit*, che viene firmato digitalmente.

## Analisi

@Zanero2010, 25 ss. -- macchine virtuali

@Zanero2010, 117 ss. -- script per estrarre file

- Autopsy
- Data carving
- Timeline

## Presentazione

- Redazione delle relazioni

