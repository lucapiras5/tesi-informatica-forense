# Dati informatici e informatica forense

## Dati, informazioni e decisioni {#dati-informazioni-decisioni}

Una regola generale del diritto è che le decisioni devono essere motivate.
Il soggetto che prende una decisione deve dare conto (anche sommariamente) degli elementi che ha considerato, di come li ha valutati, e quale percorso logico ha seguito per arrivare all determinazione finale.
Anche nei casi in cui non è necessario rendere conto della motivazione[^decreti-non-motivati] esiste sempre un processo decisionale.

[^decreti-non-motivati]: Ad esempio, i decreti del giudice devono essere motivati solo quando la legge lo richiede (art. 135 co. 4 c.p.c.; art. 125 co. 3 c.p.p.).

Il processo inizia con la raccolta di "dati" (elementi oggettivi), che devono essere valutati ed interpretati dalle parti e dal giudice per ottenere "informazioni" utili a seconda dell'obiettivo da perseguire (elementi soggettivi) [@Gammarota2016, 46--47].
La qualità della decisione è limitata dalla qualità dei dati "grezzi", e dalla loro corretta valutazione ed interpretazione:
Se i dati sono insufficienti, inaffidabili, o contraddittori, ed in ogni caso, se i dati vengono interpretati erroneamente[^interpretazione-erronea-dati] la decisione sarà viziata.
Il problema è riassunto in maniera efficace dalla massima inglese *garbage in, garbage out* (se entra spazzatura, esce spazzatura).

L'interpretazione è il momento più importante.
Se, anche inconsapevolmente, delle informazioni sbagliate o poco affidabili sono considerate valide e veritiere, la decisione finale sarà intrinsecamente fallace.
Viceversa, una decisione che tiene in conto il fatto che le informazioni sulla base di cui è stata presa erano incomplete o inaffidabili è intrinsecamente più valida, indipendentemente dal suo esatto contenuto.

[^interpretazione-erronea-dati]: Ispirandosi ai motivi di impugnazione di una sentenza in Cassazione, si potrebbe parlare di errore di fatto (l'interpretazione si fonda su una rappresentazione erronea dei dati), errore di diritto (inteso come cattiva applicazione di norme del diritto, e più in generale, delle regole tecniche che sono richiamate anche indirettamente dal diritto), e vizi di motivazione (la valutazione è insufficiente, poco chiara, o manifestamente illogica).

I dati informatici, più comunemente detti dati digitali,[^dati-informatici-digitali] possono essere usati per prendere decisioni.
Ad esempio, possono rilevare come elementi di prova all'interno di un processo (civile, penale, amministrativo &hellip;), come oggetto delle indagini preliminari nel procedimento penale [@Conso2020, 419], ai fini dell'istruttoria per un procedimento amministrativo, nei processi di ADR (*alternative dispute resolution*, risoluzione alternativa delle controversie) come l'arbitrato, nei procedimenti disciplinari &hellip;

[^dati-informatici-digitali]: La versione inglese della Convenzione sulla cibercriminalità (Budapest, 2001) usa l'espressione *digital data*, quella francese usa l'espressione *données informatiques*. Entrambe le versioni sono ufficiali, quindi le traduzioni letterali "dati digitali" o "dati informatici" sono intercambiabili. Anche se l'espressione "dati digitali" viene usato con maggiore frequenza di "dati informatici", nella presente trattazione si preferirà la seconda, per l'assonanza con il nome della disciplina "informatica forense".

## Caratteristiche dei dati informatici {#sez-caratteristiche-dati-informatici}

I dati informatici presentano alcune caratteristiche distintive, che possono essere brevemente riassunte con i termini "malleabilità" e "riproducibilità".
Esistono numerosi modi in cui i dati informatici possono essere modificati.
Rilevare e analizzare queste modifiche non è una scienza esatta, ma è necessario per la loro corretta valutazione.
La facilità con cui è possibile modificarli è controbilanciata dalla facilità con cui è possibile creare copie dei dati, e verificare la loro integrità.

La prima caratteristica è che i dati informatici hanno natura "non immateriale", e necessitano di un supporto materiale per la loro conservazione e trasmissione.

È difficile qualificarli come "materiali", perché non è possibile toccarli con mano, o comunque osservarli ad occhio nudo, e servono apparecchiature specializzate per utilizzarli.

Allo stesso tempo, è difficile qualificarli anche come "immateriali", perché la loro conservazione e trasmissione richiede sempre una modifica della realtà materiale.
La modifica può essere di breve durata, di breve raggio, specie (ma non esclusivamente) nel caso della trasmissione di dati,[^modifica-breve-durata-breve-raggio] ma deve comunque essere materialmente misurabile.
Se così non fosse, i dati digitali sarebbero puramente immaginari.

[^modifica-breve-durata-breve-raggio]: Ad esempio, i dati informatici che vengono trasmessi esistono solo come "flusso" di dati, e "smettono di esistere" una volta che la trasmissione è terminata. Il segnale Wi-Fi ha un raggio utile limitato, al di fuori del quale la trasmissione diventa impossibile. Anche la conservazione dei dati può essere temporanea. Si pensi alla memoria RAM, che conserva i dati in maniera stabile, non è un "flusso" di dati, ma si disperde una volta che il dispositivo viene spento.

Il corollario di questa caratteristica è che qualsiasi malfunzionamento o deterioramento del supporto informatico si riflette sui dati digitali.

Il deterioramento è il processo naturale, inevitabile ed irreversibile per cui tutta la materia tende progressivamente verso il disordine.
Il supporto materiale nel tempo diventerà sempre meno in grado di conservare o trasmettere dati correttamente.
Il deterioramento è normalmente un processo che comporta la perdita graduale di funzionalità del supporto:

- I casi più lievi sono i casi in cui il sistema rileva la presenza di *bad sectors* (settori corrotti) che sono diventati leggibili, e la notifica all'utente.
- Nei casi più gravi, il sistema non si accorge che un settore è corrotto, e restituisce un dato errato senza informare l'utente.
- Nel caso peggiore, l'intero supporto non viene più riconosciuto.
A quel punto, è necessario utilizzare tecniche particolarmente invasive per cercare di recuperare i dati, che richiedono lo smontaggio irreversibile del supporto materiale, ed in ogni caso, pongono problemi dal punto di vista della loro affidabilità.

Il malfunzionamento è un fenomeno estremamente raro da un punto di vista statistico, per cui un supporto non deteriorato si comporta in maniera erronea.
Possono dipendere da:

- Cause esterne o naturali, come i *bit flip* (inversione di singoli bit) dovuta a raggi cosmici [@Long2022].
- Cause interne o meccaniche, come gli *unrecoverable read errors*[^unrecoverable-read-errors] (errori di lettura irrimediabili) che sono dovuti al fatto che il supporto materiale è pur sempre un oggetto imperfetto.

[^unrecoverable-read-errors]: \VediUrl{T. Pott, I. Thomson}{Flash banishes the spectre of the unrecoverable data error}{2015}{https://www.theregister.com/2015/05/07/flash_banishes_the_spectre_of_the_unrecoverable_data_error}.

Un secondo corollario è che i dati informatici possono essere modificati in maniera anonima, senza lasciare tracce.
Se si ha accesso fisico al supporto materiale, ed è possibile collegarlo ad un altro computer, in linea teorica, è sempre possibile modificare i suoi contenuti.

Nella pratica, si possono incontrare alcuni limiti.
In alcuni casi, la natura stessa del supporto materiale impedisce la sua modificazione. Ad esempio, i dati nei supporti materiali ottici (CD, DVD, Blu-Ray &hellip;) sono rappresentati incidendo in maniera irreversibile il supporto con un raggio laser.

Ancora, il supporto materiale prevede delle misure di sicurezza implementate a livello di *hardware*. Ad esempio, il supporto si rifiuta di funzionare a meno che non venga inserita una password, una chiave di sicurezza &hellip; Aggirare questo tipo di misure di sicurezza richiederebbe un intervento materiale sul dispositivo, con enorme rischio di perdere o danneggiare i dati.

Viceversa, le misure di sicurezza implementate a livello di software sono efficaci solo quando il sistema è attivo.
Se il sistema è spento, il software che controlla l'applicazione delle *ACL* (*access-control lists*, liste di controllo degli accessi) non è in esecuzione, e pertanto è possibile accedere a qualsiasi file.

L'unica misura di sicurezza a livello di software utile per prevenire gli accessi anche quando il sistema non è in esecuzione è l'uso della *encryption at-rest* (crittografia "a riposo").[^CrittografiaRiposo]
È sempre possibile leggere i contenuti di un file cifrato, ma se non si dispone della chiave di cifratura, è impossibile decifrarli ed esaminarli.

[^CrittografiaRiposo]: La *encryption at-rest* non usa tecniche diverse rispetto alla normale crittografia, ma serve solo ad evidenziare che i dati cifrati sono conservati in maniera stabile sul supporto materiale. Fino dai suoi albori (si pensi al cifrario di Cesare) l'uso tipico della crittografia è stato principalmente di proteggere dati che venivano trasmessi attraverso canali di comunicazione non sicuri, piuttosto che di proteggere dati archiviati in maniera stabile.

La tecnica più semplice di modifica è la distruzione integrale di tutti i dati contenuti sul supporto.
La semplice sovrascrittura dell'intero *hard disk* è considerata un processo irreversibile [@Feenberg2013].
Tradizionalmente si raccomandava l'uso di numerosi passaggi [@Gutmann1996], ma successivamente è stato dimostrato che è sufficiente un singolo passaggio, che imposta tutti i bit a zero.[^sovrascrittura-passaggio-singolo]

[^sovrascrittura-passaggio-singolo]: \VediUrl{M. Wolbe}{Can data be recovered from a zero-filled hard drive?}{2018}{https://tinyapps.org/docs/recovering_data_from_zero_filled_hard_drive.html}.

La modifica arbitraria di contenuti specifici del disco (ad esempio, eliminare solo alcuni file, o modificare i loro contenuti) può essere rilevata mediante l'uso di varie tecniche:

- La semplice eliminazione del file non rimuove immediatamente i suoi contenuti, ma semplicemente, li segna come spazio libero. Esistono software per il recupero dei dati (ad esempio, PhotoRec [@PhotoRec]) che esaminano lo spazio libero alla ricerca di file cancellati.
- Anche se il file viene eliminato mediante sovrascrittura dei suoi contenuti (ad esempio, usando il comando *shred* [V. sez. 11.6 in @GNUCoreutilsManual]), è possibile che una copia dei contenuti del file possa essere trovata altrove. Ad esempio, se il file è un'immagine o un video, il sistema operativo spesso produce una *thumbnail* (anteprima) dei contenuti di quel file. Sovrascrivere il file non elimina automaticamente anche l'anteprima, che è salvata in maniera indipendente rispetto al file.
- Il sistema operativo e le singole operazioni possono tenere traccia dell'integrità dei file, calcolando un valore chiamato *checksum* (letteralmente, somma di controllo). Se i contenuti o le informazioni relative al file vengono modificati, ma il *checksum* non viene cambiato, si può rilevare e segnalare questa irregolarità.[^LimitiChecksum]
- Il sistema operativo e le singole operazioni possono tenere anche traccia delle operazioni compiute mediante file di *log*. Anche in questo caso, è possibile confrontare il *log* con il resto dei dati alla ricerca di incongruenze.[^LimitiLog]
- Se i dati sono protetti mediante la crittografia "a riposo", è praticamente impossibile sapere come si devono modificare i dati cifrati, in modo da ottenere un certo risultato dopo che saranno decifrati. Qualsiasi modifica produrrà un file corrotto, ma rilevare questa corruzione potrebbe essere difficile. Usando degli schemi crittografici particolari, è possibile determinare in anticipo se i dati cifrati sono stati modificati.[^AuthenticatedEncryption]

[^LimitiChecksum]: È bene notare che la tecnica di *checksum* ha alcuni limiti. Se chi sta manipolando il file sa anche se e come deve calcolare il nuovo *checksum*, la modifica non può più essere rilevata. Inoltre, il *checksum* serve solo per verificare "se" un file è stato modificato, ma non sa stabilire se i dati sono stati modificati accidentalmente o intenzionalmente. Questa valutazione tecnica può essere fatta solo da una persona.
[^LimitiLog]: Anche in questo caso si pone il problema della possibile modifica del file di log, che dovrà essere rilevata con altri modi.
[^AuthenticatedEncryption]: Si allude alla *authenticated encryption* (crittografia autenticata). \VediUrl{Cryptographeur et al.}{Why should I use Authenticated Encryption instead of just encryption?}{2013}{https://crypto.stackexchange.com/questions/12178/why-should-i-use-authenticated-encryption-instead-of-just-encryption}.

Tuttavia, una cosa è rilevare la modifica, una cosa è ricostruire lo stato precedente.
Anche quando è possibile rilevare che un sistema è stato alterato, è sempre impossibile risalire con certezza allo stato precedente, tutte le ricostruzioni sono al più ipotesi.

Nel mondo materiale, è praticamente impossibile agire senza lasciare una qualche minima traccia.
Nel mondo digitale, i singoli bit sono già l'unità di memoria minima.
Ad esempio, è sufficiente cambiare un singolo bit può trasformare la sequenza di caratteri "1966" in "1946" [@Gammarota2016, 62].
È praticamente impossibile trovare le tracce di questo cambiamento.
I bit adiacenti sono rimasi inalterati, e il bit che è stato sovrascritto non mantiene traccia del suo valore precedente.
Se quella data non occorre altrove, la modifica non può essere rilevata.

L'ultima caratteristica dei dati informatici è che possono essere facilmente duplicati un numero infinito di volte, senza *generational loss* (perdita di qualità fra copie successive).[^GenerationalLoss]
Questo significa che è impossibile distinguere fra un "originale" e la "copia": se i dati informatici sono composti dalla stessa sequenza di bit, sono indistinguibili e perfettamente equivalenti.

Per verificare l'integrità della copia rispetto all'originale, sia subito dopo la sua creazione, sia nel tempo, è utile calcolare l'*hash* ("sminuzzatura")[^DefinizioneHash] di quei dati.[^TipiHash]

[^GenerationalLoss]: Ad esempio, si pensi a come le fotocopie di fotocopie hanno una qualità minore rispetto ad una fotocopia dell'originale.
[^DefinizioneHash]: In inglese, *to hash* significa "sminuzzare". Un algoritmo di hash "sminuzza" un file, nel senso che viene diviso in una serie di *blocks* ("blocchi", tranche), sequenze di bit a lunghezza costante (512 bit per gli algoritmi MD5 e SHA-1), ed i vari blocchi vengono ricombinati fra di loro in sequenza per generare un *digest* (riassunto) dei dati originali (128 bit per MD5, 160 bit per SHA-1). La prima proprietà degli hash è che gli stessi dati in entrata producono sempre lo stesso hash in uscita. Si può verificare che due sequenze di bit sono identiche calcolando e confrontando il loro hash. La seconda proprietà degli hash è che invertire anche un singolo bit nei dati in entrata invertirà in media la metà dei bit in uscita. Pertanto, anche la minima differenza fra due sequenze di bit produrrà hash completamente diversi.
[^TipiHash]: Esistono molti tipi di hash: alcuni sono sviluppati per essere il più veloci possibile, altri per essere il più sicuri (capaci di resistere a varie tecniche di manomissione dei dati) possibile. Per verificare l'integrità dei dati, è importare usare la famiglia degli hash crittografici.

## Dati informatici come fatti

I dati informatici possono essere utilizzati per la prova di fatti.

Nel diritto penale, i reati informatici sono stati regolati per la prima volta nel 1993.[^LeggeReatiInformatici]
L'espressione "reato informatico" può essere intesa in due modi [@Gammarota2016, 29]. Nel caso dei reati informatici "propri", il sistema informatico è l'oggetto ed il bene giuridico protetto dal reato, ed è impossibile prescindere dalla sua presenza.

[^LeggeReatiInformatici]: L. 547/1993.

Si può distinguere fra due casi:

- Il sistema informatico può essere l'unico bene rilevante per il reato. Ad esempio, nella serie di reati dedicati al danneggiamento di dati, programmi e sistemi informatici pubblici e privati,[^reati-danneggiamento]
rileva il solo fatto che siano stati danneggiati dei dati digitali.
- In altri casi, l'offesa al sistema informatico si unisce all'offesa di altri beni giuridici. Ad esempio, il *ransomware* è un tipo di *malware* che cripta i file dell'utente, rendendoli inaccessibili, e chiede il pagamento di un riscatto per decrittarli. Questa condotta può essere qualificata come una frode informatica (art. 640-*ter* c.p.), una fattispecie che richiede l'alterazione del funzionamento di un sistema informatico con lo scopo di procurare un profitto. Il danno al patrimonio della persona si aggiunge al danno causato al corretto funzionamento del sistema informatico [@Bartoli2021, 335].

[^reati-danneggiamento]: Artt. 635-*bis*--*quinquies* c.p.

In questi casi è impossibile prescindere dal dato digitale, perché l'unico modo per dimostare l'evento---il danno causato al sistema informatico---è considerare i dati in esso contenuti.

Nel caso dei reati informatici "impropri", il sistema informatico è soltanto lo strumento usato per compiere il reato, ed il bene (o beni) giuridici protetti dalla fattispecie non includono il sistema informatico.

Ad esempio, gli sviluppi più recenti nelle intelligenze artificiali permette di generare dei *deepfake* vocali estraendo il timbro vocale di una persona, ed applicandolo ad un'altra registrazione, mediante un processo chiamato *voice conversion* [@Feffer2023].
Su internet si può trovare il software necessario, guide su come utilizzarlo,\VediAdEsempioUrl{https://github.com/SociallyIneptWeeb/AICoverGen}
raccolte di modelli del timbro vocale di cantanti,\VediAdEsempioUrl{https://huggingface.co/QuickWick/Music-AI-Voices}
servizi a pagamento che offrono un'interfaccia facile da usare.[^ai-voice-cloning]

[^ai-voice-cloning]: Basta cercare termini come "AI services voice cloning from recording" per trovare numerosi risultati.

La truffa (art. 640 c.p.) protegge il patrimonio della vittima e la sua libertà di autodeterminazione [@Bartoli2021, 296], e fra i vari requisiti, richiede l'uso di "artifizi o raggiri".
L'uso di questo tipo di tecnologie può sicuramente integrare quest'ultimo requisito, e casi di truffe telefoniche sono già successi negli Stati Uniti [@Kohli2023].

Nei casi di reato informatico improprio è difficile e controproducente (ma almeno in linea teorica, non impossibile) ignorare il dato digitale ai fini della prova del fatto, e concentrarsi su elementi diversi.

Più in generale, i dati informatici possono essere una fonte utile di informazioni utile durante la fase delle indagini in qualsiasi tipo di reato.
Non saranno utilizzati per ricostruire il fatto, ma solo al fine di indirizzare le indagini.
In entrambi i casi, è necessario accedere ai dati, e come discusso,\VediRef{sez-caratteristiche-dati-informatici} ogni accesso può causare una modifica dei dati.
Pertanto, nell'impossibilità di determinare *a priori* per quale fine i dati digitali saranno usati, si può agire in due modi.

La soluzione "garantista" è di applicare sempre le massime cautele, a prescindere dalla finalità.
Ci sarà un maggiore dispendio di tempo e risorse, ma i dati saranno acquisiti con tecniche che garantiscono maggiormente la loro affidabilità.
È la stessa logica della riserva di incidente probatorio nel contesto degli accertamenti irripetibili (art. 360 co. 4 e 5 c.p.p.):

> 4\. Qualora \Omissis{} la persona sottoposta alle indagini formuli riserva di promuovere incidente probatorio, il pubblico ministero dispone che non si proceda agli accertamenti salvo che questi, se differiti, non possano più essere utilmente compiuti.
>
> 5\. \Omissis{} Se il pubblico ministero, malgrado l'espressa riserva formulata dalla persona sottoposta alle indagini e pur non sussistendo le condizioni indicate nell'ultima parte del comma 4, ha ugualmente disposto di procedere agli accertamenti, i relativi risultati non possono essere utilizzati nel dibattimento.

L'unico caso in cui si può prescindere dalle maggiori garanzie dell'incidente probatorio è la necessità di dover acquisire i dati immediatamente, perché rischiano di deteriorarsi.
Ad esempio, può essere il caso dell'acquisizione del contenuto di memorie volatili, di flussi di dati informatici in trasmissione, o di dati che si trovano su un sito internet e che presumibilmente saranno cancellati a breve &hellip;
Se in seguito si dimostra che questa necessità non sussisteva, i dati diventeranno inutilizzabili, perché la loro minore affidabilità non è stata controbilanciata dall'urgenza di doverli acquisire.

Una seconda soluzione, "più pragmatica", ma anche più rischiosa, è di applicare la stessa logica che viene usata per le informazioni ottenute da una persona soggetta ad arresto o fermo (art. 350 co. 5 e 6 c.p.p):

> 5\. Sul luogo o nell'immediatezza del fatto, gli ufficiali di polizia giudiziaria possono, anche senza la presenza del difensore, assumere dalla persona nei cui confronti vengono svolte le indagini, anche se arrestata in flagranza o fermata a norma dell'articolo 384, notizie e indicazioni utili ai fini della immediata prosecuzione delle indagini.
>
> 6\. Delle notizie e delle indicazioni assunte senza l'assistenza del difensore sul luogo o nell'immediatezza del fatto a norma del comma 5 è vietata ogni documentazione e utilizzazione.

Se le informazioni sono assunte "sul luogo" e "nell'immediatezza del fatto", ed in modalità poco garantiste ("anche senza la presenza del difensore"), possono essere usate solo per la "immediata prosecuzione delle indagini", ed è vietata la loro "utilizzazione" per qualsiasi altro fine.
In altre parole, si può immediatamente prendere cognizione dei dati, ma al grave costo di non poterli usare successivamente per la prova del fatto.

## Dati informatici come atti

I dati informatici possono rappresentare anche atti.
Ad esempio, il documento informatico è definito dal CAD[^codice-amministrazione-digitale] come "il documento elettronico che contiene la rappresentazione informatica di atti, fatti o dati giuridicamente rilevanti" (art. 1, lett. *p*).

[^codice-amministrazione-digitale]: D.Lgs. 82/2005.

Il processo consiste in una "serie di atti fra loro collegati, diretti ad un risultato finale." [@Ricci2017, 233]
Pertanto, nel processo telematico, i dati informatici non rilevano solo ai fini della motivazione, ma costituiscono loro stessi l'esistenza del processo.

## Definizione di informatica forense secondo A. Gammarota

Il corretto trattamento dei dati digitali all'interno di un processo/procedimento è l'oggetto di studio dell'informatica forense.
Secondo @Gammarota2016 [26--27] l'informatica forense "studia le norme giuridiche ed le tecniche informatiche per il trattamento dei dati digitali a fini processuali."
L'autore evidenzia la necessità di interpretare la definizione nel senso più ampio possibile.

È preferibile interpretare l'espressione "fini processuali" in senso lato, ed in maniera espansiva, includendo qualsiasi procedimento decisionale in cui i dati possano assumere rilevanza, e non solo il "processo" in senso tecnico.

Il "trattamento" include la corretta gestione del dato informatico:

- Come atto, in modo da garantire la sua confidenzialità, integrità e disponibilità.[^TriadeCIA]
- Come fatto, ossia, come prova informatica, in tutte le sue fasi, partendo dalla ricerca dei supporti materiali, fino alla valutazione finale da parte del giudice.

[^TriadeCIA]: È la "triade CIA" della sicurezza informatica. "Confidenzialità" significa che l'atto deve essere conoscibile solo alle persone autorizzate. Si pensi ai divieti di pubblicazione (art. 114 c.p.p.) e al segreto previsto per gli atti di indagine (art. 329 c.p.p.). "Integrità" significa che è possibile rilevare se i dati sono stati manomessi (integrità in senso stretto), ed è possibile ricondurli ad un autore preciso (autenticità). Si pensi alla norma per cui l'uso di firme elettroniche è ricondotto al titolare della firma, fino a prova contraria (art. 20 co. 1-ter c.a.d.). Infine, la "disponibilità" significa che si deve garantire che i dati digitali siano accessibili a chi possiede le credenziali per visualizzarli, e siano in un formato preferibilmente leggibile, aperto ed inter-operabile.

Anche le "norme giuridiche" vanno interpretate in senso ampio.
Se una norma giuridica riguarda l'uso di dati informatici all'interno di un procedimento decisionale, anche solo in via indiretta o eventuale, assume automaticamente rilevanza per l'informatica forense.

Le "tecniche informatiche" fanno riferimento all'intera disciplina dell'informatica.
Non ci si deve limitare al mondo accademico, che si muove molto più lentamente dell'innovazione tecnologica.
Si deve considerare anche la libera attività di ricerca svolta dall'industria, da ricercatori indipendenti, dai pratici della disciplina [@Gammarota2016, 34], e la documentazione e formalizzazione delle *best practices* (migliori prassi) che viene svolta da enti governativi nazionali, e da organizzazioni internazionali e sovranazionali.
Ad esempio, esistono una serie di standard ISO/IEC relativi al trattamento della prova informatica\VediRef{fasi-trattamento-prova-informatica} ed investigazione dei dati digitali [@Gammarota2016, 27--28].

## Definizioni tradizionali dell'informatica forense

Nel tempo, sono state date più definizioni della *computer forensics* (informatica forense).
Il modello tipico di definizione inizia con "l'informatica forense riguarda la &hellip;", e segue con un elenco di elementi nella forma "[operazione tipica] di [oggetto]".
Vari autori hanno dato vari elenchi dei due componenti [@Gammarota2016, 16]:

- Le operazioni tipiche includono la ricerca, protezione, identificazione, estrazione, documentazione, analisi, esibizione, conservazione, interpretazione &hellip;
- Gli oggetti su cui queste operazioni intervengono sono il "mezzo di prova in un computer", la "prova informatica memorizzata come dato o come informazione codificata magneticamente", la "prova elettronica", i "mezzi del computer", i "dati del computer", la "prova informatica" &hellip;

Il tratto comune---ed il problema fondamentale---di queste definizioni è che possono ben riferirsi anche solo alla ricerca scientifica fine a sé stessa, e non legata a fini processuali.
Anche gli scienziati identificano, estraggono, documentano, analizzano, conservano, interpretano, i fenomeni naturali, ed esibiscono le loro conclusioni.
Quello che manca è l'elemento "forense", l'applicazione della scienza al processo.

Un secondo problema di queste definizioni è la modalità con cui sono fornite.
Un elenco di attività tecniche tipiche può essere utilizzato solo a fini illustrativi, e non può essere utilizzato per definire la materia in maniera netta.

Un elenco dà un'impressione di tassatività---se manca un elemento, vuol dire che la sua omissione è stata intenzionale.
Tuttavia, l'omissione potrebbe essere non voluta, per vari motivi:

- Potrebbe essere una mera dimenticanza da parte dell'autore---è difficile immaginare in astratto ogni possibile attività tipica.
- Anche se fosse possibile, è comunque possibile che l'evoluzione della prassi o della tecnologia porterebbe allo sviluppo di nuove attività tipiche.
- In ogni caso, può esistere una differenza di opinioni sull'esatto contenuto di ogni attività. Ad esempio:
  - Un autore potrebbe ritenere che i termini "conservazione" e "protezione" dei dati siano sinonimi, e userà solo un termine.
  - Un altro autore potrebbe ritenere che la "conservazione" riguardi la creazione di copie di backup ed il controllo periodico dell'integrità dei dati, mentre la loro "protezione" riguardi l'applicazione di misure di sicurezza come cifratura e controllo degli accessi.
- La presenza di più definizioni che usano termini diversi, possibilmente in accezioni diverse, porta ad incertezza. Considerate collettivamente, si può notare che convergono nello stesso senso, ma non è ideale dover leggere una moltitudine di definizioni, fino a quando si afferra l'essenza della disciplina.

Piuttosto di cercare di definire minuziosamente ed induttivamente "cosa faccia" l'informatica forense, sarebbe più opportuno definire "cosa sia" l'informatica forense, usando una definizione che rinvii non ad attività concrete, ma a concetti generali ed astratti.

## Definizione di prova informatica di E. Casey

@Casey2011 [7] dà una definizione della *digital evidence* (prova informatica), evidenziando la sua funzione processuale:

> Digital evidence is defined as any data stored or transmitted using a computer that support or refute a theory of how an offense occurred or that address critical elements of the offense such as intent or alibi.[^definizione-digital-evidence]

[^definizione-digital-evidence]: La prova informatica viene definita come qualsiasi dato archiviato o trasmesso per mezzo di un computer che corrobora o confuta una teoria su come si sia verificato un reato, o che riguarda gli elementi più importanti del reato, come il movente o l'alibi.

La prova informatica viene collegata esplicitamente all'accertamento di un reato.[^titolo-del-libro] Tuttavia, se è ritenuta idonea ad essere usata per decidere una situazione giuridica talmente delicata come la responsabilità penale di una persona,[^rischi-processo-penale] a maggior ragione è possibile utilizzarla anche all'interno di altri giudizi (civile, amministrativo &hellip;).

[^rischi-processo-penale]: Il processo penale può comprimere una serie di valori costituzionalmente garantiti, come la libertà personale in caso di condanna o applicazione di misure di sicurezza o cautelari, l'inviolabilità del domicilio, la riservatezza della corrispondenza &hellip;
[^titolo-del-libro]: In verità, subito prima della definizione l'autore specifica "For the purposes of this text" (ai fini di questo libro), ed il libro è intitolato "Digital evidence and computer crime" (Prova informatica e reati informatici), quindi è naturale che si faccia riferimento solo al diritto penale.

È interessante notare la distinzione esplicita fra dati "archiviati" o "trasmessi", perché permette di raggruppare le varie branche e specializzazioni dell'informatica forense in due famiglie:[@Ferrazzano2014, 16--19]

- Quando i dati sono archiviati all'interno di un dispositivo, si parla di *disk forensics* (analisi forense di dischi rigidi), di *mobile forensics* (analisi forense di telefoni, che spesso presentano memorie interne non estraibili), di *embedded forensics* (analisi forense di altri dispositivi diversi da computer o smartphone, che comunque sono in grado di elaborare e memorizzare dati al loro interno---ad esempio, console per videogiochi, telecamere di sicurezza &hellip;).
- Quando i dati sono trasmessi su---e acquisiti per mezzo di---reti informatiche, si parla di *network forensics* (analisi forense di reti informatiche), e di *cloud forensics* (analisi forense di dati archiviati su dispositivi gestiti da terzi, a cui si può accedere solo per mezzo di reti informatiche).

La *memory forensics* (analisi forense di memorie volatili, ossia la RAM) merita una menzione, perché sfugge a questa dicotomia.
Non può essere ricondotta alla *network forensics*, perché i dati non stanno viaggiando su una rete informatica, si trovano all'interno del dispositivo.
Tuttavia, allo stesso tempo, i dati in memoria non sono nemmeno "archiviati" in maniera stabile, perché si disperdono quando il sistema viene spento [@Ayers2015, 1].

Tradizionalmente, la *memory forensics* veniva quasi completamente ignorata.
Le istruzioni per il sequestro di dati informatici prevedevano lo spegnimento del computer, senza previa acquisizione della memoria [@Ayers2015, 7].

Tuttavia, anche se si acquisisce una copia della memoria, che così diventa un dato propriamente "archiviato", non è possibile utilizzare gli strumenti già esistenti di *disk forensics*, perché i dati salvati in memoria usano un formato diverso rispetto ai dati salvati su disco:

- Il disco contiene una serie di file---dati archiviati o statici,[^definizione-file] che sono nettamente divisi fra di loro.
- La memoria contiene una serie di processi---programmi in corso di esecuzione, che mescolano al loro interno codice e dati,[^architettura-von-neumann] e sono in continuo cambiamento.[^definizione-allocazione-dinamica]

[^definizione-file]: "File" significa letteralmente "archivio" in italiano, ma "archiviato" o "statico" non devono essere intesi nel senso di "immutabile", ma piuttosto come l'opposto di "dinamico" o "in esecuzione", attributi che descrivono meglio un programma.

[^architettura-von-neumann]: È una conseguenza del fatto che i computer usano la *Von Neumann architecture*, dove il codice e dati sono salvati nella stessa memoria. La *Harvard architecture* invece prevede due memorie nettamente separate, una per il codice da eseguire, ed una per i dati su cui il codice opera.

[^definizione-allocazione-dinamica]: È il fenomeno della allocazione dinamica di memoria. "Allocazione" significa che il sistema operativo riserva una certa quantità di memoria ad uso di un programma. "Dinamica" significa che dopo che il sistema operativo ha allocato la memoria necessaria per avviare il programma, quest'ultimo può richiedere l'allocazione di ulteriore memoria.

Ritornando all'analisi della definizione, il problema è la completa mancanza di riferimenti alle operazioni "tipiche"---tecniche e scientifiche---dell'informatica forense.
In altre parole, si indica a cosa serve la prova informatica, ma non c'è il minimo accenno alla disciplina scientifica che detta le regole relative alla sua trattazione.

# Prova informatica come prova scientifica nel processo penale

## Fasi per il trattamento della prova informatica {#fasi-trattamento-prova-informatica}

Il trattamento della prova informatica può essere diviso in sette fasi [@Ferrazzano2014, 29].

1. L'identificazione consiste nella ricerca dei supporti materiali che possono contenere dati informatici utili. Si devono considerare le loro caratteristiche, in modo da stabilire le priorità e modalità di acquisizione [@Ferrazzano2014, 29--30].
2. La raccolta consiste nel rimuovere fisicamente i supporti materiali su cui i dati sono conservati, e qualsiasi altro oggetto che sia necessario per il loro funzionamento, o utile per le indagini. In alcuni casi (sistemi informatici che devono rimanere accesi perché erogano servizi essenziali, dati presenti su server di terze parti &hellip;), la raccolta non è possibile, e si può procedere solo all'acquisizione [@Ferrazzano2014, 30--34].
3. L'acquisizione è la fase in cui si ottiene una copia dei dati informatici contenuti all'interno dei supporti. Le operazioni che vengono compiute devono essere documentate nella maniera più dettagliata possibile, in modo che i risultati possano essere valutati correttamente in seguito. Si devono prendere tutte le cautele necessarie affinché il supporto materiale originale non venga alterato, e si deve verificare la corrispondenza fra dati informatici originali e copiati mediante l'uso di almeno due[^AlmenoDueHash] *hash* crittografici [@Ferrazzano2014, 34--37].
4. Il trasporto dei supporti materiali e la conservazione dei dati richiede di usare le modalità necessarie per evitare il danneggiamento dei supporti prima della loro acquisizione (da urti, scariche elettrostatiche, polvere &hellip;), e la corretta conservazione dei dati (creazione di backup, verifica periodica degli *hash*) dopo che sono stati acquisiti. È particolarmente importante redigere un verbale anche per questa fase, che viene chiamato catena di custodia. Per ogni operazione che viene compiuta (trasporto dei supporti, acquisizione dei dati, verifica dell'integrità delle copie) si deve indicare il responsabile, dove e quanto è stata fatta, con quali modalità, e per quali motivi [@Ferrazzano2014, 37--38].
5. L'analisi è la fase in cui si va alla ricerca degli elementi utili a fine processuale. Il perito[^PeritoCTU] cerca gli elementi necessari per rispondere ai quesiti posti dal giudice (art. 226 co. 2 c.p.p.), mentre i CT[^ConsulentiTecniciCTP] cercheranno elementi a favore della parte processuale assistita (PM o difensore) [@Ferrazzano2014, 39--40].
6. La valutazione è strettamente legata all'analisi, ed è svolta dagli stessi soggetti. La perizia "è ammessa quando occorre svolgere indagini o acquisire dati o valutazioni che richiedono specifiche competenze tecniche, scientifiche e artistiche" (art. 220 co. 1 c.p.p.). I CT possono formulare "osservazioni e riserve, delle quali deve darsi atto nella relazione" del perito (art. 230 co. 2 c.p.p.), e se "non è stata disposta perizia \Omissis{} possono esporre al giudice il proprio parere, anche presentando memorie" (art. 233 co. 1 c.p.p.). L'analisi individua i dati informatici rilevanti, la valutazione è il momento in cui questi dati vengono interpretati in modo che risultino utili per il processo. Il perito, data la sua natura di ausiliario del giudice, fornisce un'interpretazione imparziale. I consulenti tecnici forniscono interpretazioni favorevoli alla parte assistita, e che contraddicono quanto affermato dall'altra parte, o perlomeno screditano l'attendibilità della loro posizione [@Ferrazzano2014, 41].
7. La presentazione è la fase finale, dove le valutazioni svolte dal personale tecnico vengono concretamente acquisite all'interno del processo. Il perito e gli eventuali CT vengono inseriti nelle liste testimoniali (art. 468 c.p.p.). In ogni caso, il giudice acquisisce la relazione finale del perito (art. 227 c.p.p.) e le memorie scritte dai CT (art. 233 co. 1 c.p.p.) [@Ferrazzano2014, 41--42].

[^AlmenoDueHash]: È preferibile usare più di una funzione di hash per vari motivi: si hanno più valori di riferimento per verificare se i dati sono identici, anche se le singole funzioni di hash diventano compromesse (si trova un metodo per far restituire lo stesso hash per input diversi) è praticamente impossibile che lo stesso metodo funzioni per tutte le funzioni di hash &hellip;
[^PeritoCTU]: Nel processo penale si parla di perito, nel processo civile si parta di CTU (consulente tecnico d'ufficio).
[^ConsulentiTecniciCTP]: Nel processo penale si parla di consulenti tecnici, nel processo civile si parla di CTP (consulenti tecnici di parte).

## Natura della prova informatica

I dati informatici possono rilevare in numerosi istituti del procedimento penale.
Non esiste una "prova informatica" propriamente detta all'interno del codice, ma i dati informatici assumono rilevanza in vari istituti.
Alcuni articoli menzionano esplicitamente i sistemi e dati informatici.
Altri, per la loro formulazione estremamente generica, o per il fatto che richiamano caratteristiche applicabili ai dati informatici, possono essere applicati anche ai dati informatici.

## Prova documentale

Se la prova informatica consiste in dati informatici che vengono acquisiti nel processo, è più corretto parlare di "prova documentale informatica" [@Gammarota2016, 68--69].
Il dato informatico rientra sicuramente nella definizione estremamente generica di documento data dal codice (art. 234 c.p.p.):

> È consentita l'acquisizione di scritti o di altri documenti che rappresentano fatti, persone o cose mediante la fotografia, la cinematografia, la fonografia o qualsiasi altro mezzo.

Le parti possono chiedere l'ammissione di documenti (art. 495 co. 3 c.p.p.), i documenti informatici sono inseriti nel fascicolo del dibattimento (art. 515 c.p.p.), ed il giudice ne prende cognizione ai fini della decisione (art. 526 co. 1 c.p.p.).
Se l'unica operazione che il giudice sta compiendo è semplicemente prendere cognizione del mezzo di prova, non c'è una differenza significativa tra uno scritto o un file PDF, una fotografia o un file JPG.
Dato che il giudice è *peritus peritorum* (perito dei periti), e può discostarsi dai risultati della perizia, può anche decidere discrezionalmente se al fine di valutare l'elemento di prova, serva o sia opportuno l'intervento di un perito, oppure se siano sufficienti le conoscenze della persona media [@Renzetti2015, 405--406].

## Prova atipica

Una seconda possibile qualificazione per la prova informatica è la prova atipica (art. 189):

> Quando è richiesta una prova non disciplinata dalla legge, il giudice può assumerla se essa risulta idonea ad assicurare l'accertamento dei fatti e non pregiudica la libertà morale della persona. Il giudice provvede all'ammissione, sentite le parti sulle modalità di assunzione della prova.

Ad esempio, i dati prodotti dall'operazione di controllo satellitare mediante GPS sono considerati una prova atipica [@Renzetti2015, 404], perché l'attività di pedinamento in generale è considerata un'attività di indagine atipica [@Conso2020, 449].

Questa impostazione deve essere superata.
La prova atipica è una norma di chiusura del sistema, e deve essere usata in casi estremi, solo quando le modalità che si intendono usare non sono assolutamente riconducibili ad una prova tipica e già disciplinata dal legislatore.
Al più può essere utilizzata per le prove scientifiche "nuove" e "controverse".
In questo caso, le parti discutono se la prova scientifica sia effettivamente idonea ad accertare i fatti, in modo da evitare alla radice l'ammissione di *junk science* (pseudoscienza) nel processo [@Renzetti2015, 406--408].

Il limite più grave della prova atipica è che non sono previste garanzie a tutela dei diritti fondamentali delle persone, o cautele da seguire per la corretta acquisizione della prova.

Se la prova va ad incidere su libertà fondamentali della persona costituzionalmente garantite, è inammissibile [@Conso2020, 449].

Ancora, in alcuni casi il legislatore prevede una serie minuziosa di regole e sanzioni processuali.
Si pensi alla disciplina meticolosa prevista per la ricognizione di persone.
Un intero articolo è dedicato agli atti preliminari, si prevede l'esecuzione e la menzione di questi adempimenti nel verbale a pena di nullità, e gli articoli successivi regolano lo svolgimento, e altri tipi di ricognizione (artt. 213--216 c.p.c.).

Il motivo di queste cautele è che il legislatore sa che la memoria umana è estremamente fragile, e servono cautele particolari.
Nel caso della prova atipica, queste regole e cautele devono essere decise caso per caso dalle parti, con seri problemi di disuguaglianza di trattamento fra i vari casi, e l'unica "sanzione" ipotizzabile è il fatto che il giudice darà peso minimo o nullo a quella prova.

## Accertamento tecnico

È opportuno considerare gli accertamenti tecnici che hanno ad oggetto dati informatici come non ripetibili:

- Perché possono essere considerate "cose \Omissis{} il cui stato è soggetto a modificazione" (art. 360 c.p.p.). È possibile modificare un sistema informatico senza lasciare tracce\VediRef{sez-caratteristiche-dati-informatici}, un sistema informatico acceso esegue un grande numero di processi non visibili all'utente che modificano dati [@Gammarota2016, 149].
- Perché "l'accertamento tecnico determina modificazioni delle cose \Omissis{} tali da rendere l'atto non ripetibile" (art. 127 disp. att. c.p.c.). L'esecuzione di qualsiasi operazione su un sistema acceso, e persino lo spegnimento ordinario del sistema (invece che staccare la spina) alterano un grande numero di file [@Cinti2011, 93--95].

L'inquadramento come un'operazione irripetibile ha il vantaggio di permettere la riserva di incidente probatorio, e una sanzione processuale di inutilizzabilità.
L'unico caso in cui il PM può procedere comunque, senza aspettare l'incidente probatorio, è l'assoluta necessità di procedere immediatamente agli accertamenti, che diventerebbero inutili se differiti.
Se in seguito si dimostra che era possibile attendere l'incidente probatorio, e che quindi l'accertamento è stato fatto con modalità irripetibili senza reale necessità, i risultati sono inutilizzabili (art. 360 co. 4 e 5 c.p.c).

## Ispezioni e perquisizioni

Le ispezioni e perquisizioni possono avere per oggetto un sistema informatico, ma si devono usare "misure tecniche dirette ad assicurare la conservazione dei dati originali e ad impedirne l'alterazione" (art. 244 co. 2 e 247 co. 1-bis c.p.p.).
L'ispezione serve ad "accertare le tracce e gli altri effetti materiali del reato" (art. 244 co. 1 c.p.p.), mentre la perquisizione serve a cercare il "corpo del reato o cose pertinenti al reato" (art. 247 co. 1 c.p.p.).

Dato l'espresso richiamo alla conservazione dei dati originali contenuto in entrambe le norme, è preferibile acquisire una copia del dispositivo, ed eseguire le operazioni su di esso, per evitare di modificare l'originale.
La copia dei dati può essere ricondotta al sequestro, perché quest'ultimo riguarda l'acquisizione del "corpo del reato", definito come "le cose sulle quali o mediante le quali il reato è stato commesso" (art. 253 c.p.p.).
Pertanto, diventa difficile distinguere fra ispezione e perquisizione di un sistema informatico.

## Intercettazioni mediante captatore

- Definizione di intercettazione, di captatore.
- Problema dell'affidabilità, del diritto alla difesa.

## Perizia e consulenza tecnica

Il mezzo di prova ideale per i dati informatici è l'uso della perizia e/o consulenza tecnica.
La perizia "è ammessa" (nel senso che "deve", e non "può" essere ammessa) quando serve "svolgere indagini o acquisire dati o valutazioni che richiedono specifiche competenze tecniche, scientifiche \Omissis{}" (art. 220 co. 1 c.p.p.).

La perizia richiede un dispendio di tempo e risorse, quindi è plausibile che non sarà usata in qualsiasi caso serva acquisire dei dati informatici nel processo.
Dovrà sicuramente essere usata se:

- L'oggetto della prova dipende completamente o in larga parte dalla corretta acquisizione e valutazione del dato informatico.
- Esistono dubbi sulla genuinità o attendibilità del dato informatico.
- Il fatto da ricostruire è particolarmente complesso, ci sono elementi sia a carico che a favore dell'imputato, ed il giudice ritiene che la perizia potrebbe fornire elementi utili a risolvere il dubbio.

Se viene richiesta una perizia, i consulenti tecnici forniscono il loro contributo in vari momenti, e possono (art. 230 c.p.p.):

- "[A]ssistere al conferimento dell'incarico al perito e presentare al giudice richieste, osservazioni e riserve, delle quali è fatta menzione nel verbale."
- "[P]artecipare alle operazioni peritali, proponendo al perito specifiche indagini e formulando osservazioni e riserve, delle quali deve darsi atto nella relazione."
- "[E]saminare le relazioni e richiedere al giudice di essere autorizzati a esaminare la persona, la cosa e il luogo oggetto della perizia", se vengono nominati dopo che la perizia è stata conclusa.

In particolare, quando i consulenti assistono al conferimento dell'incarico, il giudice "formula \Omissis{} i quesiti, sentiti il perito, i consulenti tecnici, il pubblico ministero e i difensori presenti" (art. 226 c.p.p.).
La funzione del consulente tecnico è di garantire il contraddittorio da un punto di vista tecnico e scientifico, fin dal momento della definizione dell'oggetto della perizia.
Durante la perizia, i loro contributi devono essere verbalizzati, e anche dopo che la perizia è terminata, possono comunque procedere ad esaminare l'oggetto della perizia.

Anche se la perizia non viene richiesta, le parti possono comunque dotarsi di consulenti tecnici, che potranno presentare il loro parere anche con memorie, potranno intervenire alle ispezioni (non si menziona la possibilità di partecipare alle perquisizioni, ma è possibile un'applicazione analogica della norma, dato che andrebbe a favore dell'indagato o imputato), e potranno esaminare le cose che sono state oggetto di ispezione o perquisizione, purché conservino lo stato originario delle cose (art. 233 co. 1--1-*ter* c.p.p.).

Come visto, l'ispezione e perquisizione tendono a sovrapporsi quando hanno per oggetto dati informatici, perché andrebbero eseguite sulla copia dei contenuti del supporto.
L'ultima disposizione deve essere intesa nel senso che i difensori possano ottenere una copia dei dati informatici già sequestrati, ed esaminare quella copia.
Questa interpretazione ha due vantaggi: evita un secondo intervento di acquisizione sul supporto materiale originario, e permette al consulente del difensore di lavorare con gli stessi dati detenuti dal PM.

In sede di valutazione della prova, il giudice deve ricomporre le valutazioni che sono state date dai tecnici.
Si devono evitare due estremi, uno dove il giudice non dà il giusto peso alla prova scientifica, e non la richiede anche quando sarebbe opportuno, e uno dove il giudice rimette la decisione interamente agli esperti [@Renzetti2015, 405--406].
Il secondo caso è particolarmente insidioso quando non si possa parlare di "contraddittorio tecnico", perché è intervenuto soltanto un esperto: le parti non hanno nominato un consulente in occasione della o dopo la perizia, o solo una parte (specialmente il PM) ha nominato un consulente tecnico.

Il giudice deve valutare tutti i contributi tecnici e scientifici in maniera critica.
Le conclusioni del perito non sono migliori rispetto alle conclusioni del consulente tecnico, e non si deve preferire il consulente del PM rispetto al consulente della difesa.
Soprattutto, la prova scientifica non ha maggiore peso rispetto alle altre prove solo perché è fondata su leggi scientifiche [@Renzetti2015, 421].

Infatti, dato che il metodo scientifico è interamente fondato sulla continua revisione e falsificazione di teorie in modo da migliorarle, è plausibile che esistano contemporaneamente più opinioni.
È possibile usare leggi scientifiche che non siano unanimemente riconosciute, purché siano "maggiormente accolte" o "largamente condivise".
Il problema fondamentale è l'uso di teorie e tecniche scientifiche originali, che non sono stato oggetto di larga discussione in dottrina [@Marinucci2020, 246].

## Apparente fragilità dell'informatica forense

Nel caso dell'informatica forense, non si può negare la maturità ed autonomia della disciplina, sarebbe inopportuno ritenerla una "scienza nuova" e ricondurla all'interno della prova atipica.

Il problema è nella continua evoluzione dell'oggetto del suo oggetto di studio.
Nell'ambito delle scienze naturali, i fenomeni naturali non cambiano, cambiano solo le teorie ed i modelli che gli scienziati sviluppano per spiegarli.
Viceversa, nell'ambito dell'informatica forense, i supporti, sistemi, programmi e dati informatici sono in continua evoluzione.
Questo potrebbe far pensare che l'analisi della prova informatica si fondi sempre, o quasi sempre, su teorie originali, che non sono state oggetto di discussione in dottrina.

Spesso i sistemi operativi, programmi informatici, protocolli per la trasmissione dei dati, e formati per la conservazione dei dati possono essere proprietari.
Nei casi peggiori:

- I supporti materiali su cui i dati sono memorizzati potrebbero non essere rimovibili (è il classico caso degli smartphone, o di altri dispositivi creati per uno scopo particolare, come gli apparecchi elettromedicali), o potrebbero non usare interfacce standard. In questo caso, l'unico modo di acquisire dati è di usare il dispositivo stesso, con limiti alla quantità di dati che è possibile estrarre (è improbabile ottenere una copia forense dell'intero dispositivo, al più ci si dovrà accontentare di singoli file o dati diagnostici), ed il rischio di modificare i dati perché si sta utilizzando il dispositivo.
- Spesso i programmi e dati non sono documentati pubblicamente, e la documentazione potrebbe essere fornita solo a sviluppatori di terze parti, a discrezione degli sviluppatori originali, e comunque con un vincolo di *NDA* (*non-disclosure agreements*, accordi di riservatezza), in modo che queste informazioni non possano essere condivise con il pubblico.
- Anche nei casi in cui la documentazione venga fornita, potrebbe essere incompleta o inadeguata per i fini specifici delle investigazioni di informatica forense, che mirano ad accertare l'integrità (non-manomissione) dei dati, e ricostruire le dinamiche che hanno portato ad un certo assetto. È molto probabile che le specifiche tecniche dei file e protocolli siano documentati in dettaglio, ma è meno probabile che il funzionamento del sistema operativo e dei programmi (quali file aprono, modificano, creano od eliminano durante il loro funzionamento, come i file vengono modificati, a quali condizioni, in che formato &hellip;) siano oggetto di descrizione.

In tutti questi casi, l'attività di ricerca è per forza di cose limitata e provvisoria.
Ancora, la risoluzione di casi concreti potrebbe richiedere lo sviluppo di soluzioni originali, perché non esiste ancora un metodo comprovato e maturo per l'acquisizione o analisi dei dati informatici in quel caso specifico.
In ogni caso, tutta l'attività di ricerca può sempre essere resa obsoleta dall'aggiornamento dei componenti oggetto di studio.

Quanto detto finora non significa che l'informatica forense sia un precario castello di carte, pronto a crollare in qualsiasi momento.
Piuttosto, ha varie implicazioni per come la ricerca della materia deve essere condotta, come i tecnici devono presentare le loro conclusioni, e come il giudice deve valutare la prova informatica.

## Informatica come scienza in senso lato

L'aggettivo "forense" nell'espressione "informatica forense" suggerisce l'affinità con le altre scienze forensi, che possono essere sia scienze naturali (ad esempio, la medicina legale e la tossicologia forense sono strettamente legate alla biologia, la balistica forense è legata alla fisica), o scienze sociali (ad esempio, la criminologia e la psicologia).

Si pone il problema di definire che tipo di scienza sia l'informatica. Da un lato, si può sicuramente escludere che sia una scienza sociale. Può essere usata dalle scienze sociali per analizzare grandi quantità di dati,[^analyics] ma interessa principalmente come strumento, non come scienza.

[^analyics]: Si pensi al settore della *data analytics*, che analizza enormi quantità di dati grezzi relativi ad utenti di siti internet per studiare---ed eventualmente, manipolare---fenomeni sociali (ad esempio, a quali temi gli utenti sono interessati, e come incentivarli ad acquistare determinati prodotti), e la relativa regolazione da parte del diritto, che cerca di regolare l'utilizzazione dei dati personali resi disponibili dagli utenti su internet, con strumenti come la GDPR.

Da un altro, si può escludere anche che sia una scienza naturale. L'oggetto dello studio dell'informatica è l'elaborazione automatica delle informazioni,[^definizione-informatica] e non l'informazione come "fenomeno naturale".

[^definizione-informatica]: \VediUrl{Treccani.it}{Informatica}{n.d.}{https://www.treccani.it/enciclopedia/informatica/}.

La fisica cerca di elaborare modelli teorici che spiegano come sia possibile parlare di "informazione".
Ad esempio, si può dire che un libro stampato contenga informazioni perché gli atomi che lo compongono tendono a rimanere nella stessa posizione.
A loro volta, la posizione degli atomi all'interno della realtà materiale è una forma di informazione, perché è un dato percepibile e misurabile.

L'informatica, invece, è puramente teorica.
Il suo obiettivo non è tanto di spiegare "come" l'informazione esiste. Il "come" l'informazione esiste può condizionare lo sviluppo dell'informatica, specie quando si passa all'implementazione pratica delle costruzioni teoriche dell'informatica,[^macchina-di-turing] ma in ogni caso, il vero cuore della disciplina è "cosa" si può fare con l'informazione.

[^macchina-di-turing]: Ad esempio, la Macchina di Turing è un modello di calcolatore che memorizza i dati su un nastro di lunghezza infinita. I computer che utilizziamo ogni giorno sono una mera imitazione dell'ideale platonico della Macchina di Turing, perché dispongoono di una quantità di memoria limitata.

Da questo punto di vista, è analoga alla matematica,[^matematica-scienze-naturali] che normalmente non viene descritta come una "scienza" in senso proprio, termine normalmente riservato per le scienze naturali, ma come una "scienza" in senso lato, ossia un insieme di conoscenze organizzate [@Bilaniuk1996].

[^matematica-scienze-naturali]: In ultima analisi, tutte le scienze naturali sono fondate sulla matematica. La sociologia si fonda sulla psicologia, che si fonda sulla biologia, che si fonda sulla chimica, che si fonda sulla fisica, che per ultima si fonda direttamente sulla matematica, che può essere definita la scienza più "pura", perché non studia né gli esseri umani, né la natura materiale, ma fenomeni completamente astratti. \VediUrl{R. Munroe}{Purity}{n.d.}{https://xkcd.com/435/}.

La matematica non si preoccupa di spiegare "come" esistano i concetti astratti di numeri, i punti, le rette&hellip;^[In verità, si può discutere da un punto di vista filosofico se la matematica sia "scoperta", come un qualsiasi altro fenomeno naturale, seppure estremamente astratto, e quindi se la realtà materiale ponga dei limiti invalicabili a quanto può essere scoperto nella matematica---oppure, se sia "inventata", e quindi qualsiasi assioma, per quanto a prima vista "innaturale", possa comunque essere studiato, anche solo a livello teorico.]
Piuttosto, dà per scontato che questi concetti esistano, seppur in maniera astratta, e mediante ragionamenti deduttivi, queste verità assiomatiche producono "teoremi". Un teorema non è un'ipotesi che aspetta di essere confutata,[^congettura-di-goldbach] ma è una proposizione logica che aspetta di essere provata.[^teorema-di-euclide]
L'esempio meglio conosciuto delle potenzialità del ragionamento deduttivo sono gli *Elementi* di Euclide, dove partendo da un numero limitato di elementi, si costruisce una serie di derivazioni logiche che permettono di dimostrare sempre più risultati.

[^congettura-di-goldbach]: Nella matematica l'equivalente delle "ipotesi" scientifiche sono le "congetture", Ad esempio, la congettura di Goldbach è formulata come "ogni numero pari maggiore di 2 può essere scritto come somma di due numeri primi, anche uguali". Basterebbe trovare un singolo numero non esprimibile come la somma di due numeri primi per confutare la congettura usando il metodo induttivo. 

[^teorema-di-euclide]: Ad esempio, il teorema di Euclide dimostra in maniera deduttiva che i numeri primi sono infiniti. Ottenere lo stesso risultato in maniera induttiva sarebbe impossibile, perché indipendentemente da quanto tempo sia trascorso dall'ultimo numero primo, non è possibile escludere a priori che fra gli infiniti numeri rimanenti non ci siano altri numeri primi.]

Allo stesso modo, l'informatica definisce una serie di concetti fondamentali. Ad esempio, definisce:

- Le unità di misura fondamentail---il bit, il byte &hellip;
- Le operazioni che permettono di confrontare i dati---gli operatori booleani *and* (e), *or* (o), *not* (non) &hellip;
- Astrazioni come le variabili (nome arbitrario, scelto dal programmatore, per riferirsi ai contenuti di un indirizzo di memoria), le *subroutine* o funzioni (sequenza di istruzioni che può prendere dei valori in input, e come output restituisce nuovi valori, o altera valori esistenti) &hellip;
- Operazioni che permettono di controllare il flusso del programma sulla base di determinate condizioni, come *if--then--else* (se--allora--altrimenti), i *while loops* (ripeti le operazioni finché) &hellip;
- Via via, concetti sempre più complessi, come la *OOP* (*object-oriented programming*, programmazione a oggetti), il *multithreading* e l'*asynchronous programming* (tecniche di esecuzione di funzioni in parallelo, per aumentare l'efficienza dei programmi) &hellip;

Ancora, laddove le scienze naturali producono teorie che cercano di spiegare un fenomeno, l'informatica produce algoritmi---sequenze di istruzioni che non hanno un contenuto definitorio o conoscitivo, ma solamente imperativo.
L'informatica può sicuramente essere usata per svolgere l'attività di ricerca nelle scienze naturali, ma ha sostanzialmente la stessa funzione della matematica: aiuta nella ricerca, formalizza i risultati, ma non è propriamente una "scienza".

## Ricerca scientifica nell'informatica forense

Se l'informatica di per sé potrebbe non essere considerata una "scienza naturale", ma piuttosto una branca della matematica, l'informatica forense, intesa come informatica applicata per risolvere questioni processuali, può sicuramente avere la natura di scienza naturale.

In primo luogo, i supporti materiali su cui i dati informatici sono memorizzati sono soggetti ai fenomeni naturali, che sono oggetto di studio delle scienze naturali.
Questo permette di determinare le migliori modalità di trattamento dei supporti materiali, nelle prime fasi del trattamento della prova informatica (identificazione, raccolta, trasporto e conservazione).

Anche il sistema operativo ed programmi possono essere considerati un "fenomeno naturale" perché la loro modalità di funzionamento non è immediatamente apparente, anche quando è possibile studiare direttamente il codice sorgente.

Se il software è proprietario, e non si ha accesso al codice sorgente, si possono usare le stesse tecniche usate dagli scienziati che studiano un fenomeno naturale:

- Si osserva il software ed si interagisce con esso (si forniscono determinati input, si svolgono certe azioni),
- Si documentano le operazioni svolte ed i risultati osservati.
- Si formulano delle ipotesi di leggi che descrivono il funzionamento del fenomeno ("data la sequenza di azioni *X*, il programma produce i cambiamenti *Y*"). La formulazione delle ipotesi è libera, e non segue schemi formali, ma è possibile formulare nuove ipotesi iterando su quelle già sviluppate [@Blachowicz2009, 321--323].
- Si sviluppa un esperimento che può essere riprodotto e ripetuto anche da altri scienziati.
- Si sottopongono le ipotesi a verificazione mediante l'esperimento, e si documentano i risultati. La fase di verificazione è particolarmente delicata. Il solo fatto che i risultati osservati confermano l'ipotesi oggetto di esame non è sufficiente a dimostrare che l'ipotesi sia valida,[^fallacia-affermare-conseguente] perché serve anche dimostrare che i risultati non siano dovuti a cause alternative [@Blachowicz2009, 325].
- Le ipotesi e l'esperimento vengono raffinati, in modo da cercare di creare un esperimento controllato---un esperimento dove l'unico elemento che cambia è la variabile che viene studiata. Nell'informatica, si parla di *minimum reproducible example* (minimo esempio riproducibile), il numero minimo di azioni necessarie per riprodurre un certo fenomeno.
- Eventualmente, si arriva alla creazione di una serie di massime di esperienza, di "leggi scientifiche" che sono state comprovate empiricamente, e formano una "teoria" sul funzionamento di quel programma.

Se il software è libero, ed è possible prendere visione del codice sorgente, e quindi sapere esattamente quali istruzioni sono eseguite dal programma, rimane comunque un margine di incertezza.
I software possono contenere *bug* (un errore di programmazione).
Leggendo il codice ci si aspetta il risultato *X*, ma eseguendolo si ottiene il risultato *Y*.
I bug vengono analizzati con tecniche di *debugging*, che sono pienamente ispirate al metodo scientifico.[^debugging]
L'obiettivo per l'informatica forense non è di risolvere il bug, ma di studiarlo come se fosse un fenomeno naturale, e capire in quali condizioni si verifica, e quali effetti produce, in modo da poter valutare il suo impatto sui dati.

[^fallacia-affermare-conseguente]: È la fallacia logica di affermare il conseguente: "Se *A*, *B*; *B*; pertanto, *A*", ma questo ignora il fatto che *B* potrebbe avere altre cause oltre che *A*. Per fare un esempio pratico: "Se nei programmi ci sono bug, si arresteranno in maniera inaspettata. Windows si è arrestato inaspettatamente, pertanto Windows deve avere un bug". Tuttavia, se Windows si arresta anche quando esegue istruzioni estremamente semplici, come impostare un valore a 0, si iniziano a sospettare altre cause per l'arresto inaspettato, tra cui l'instabilità dell'hardware dovuta ad *overclocking* (la sovralimentazione di un processore al fine di aumentare le prestazioni, al costo di sacrificare il suo corretto funzionamento). \VediUrl{R. Chen}{There's an awful lot of overclocking out there}{2005}{https://devblogs.microsoft.com/oldnewthing/20050412-47/?p=35923}.
[^debugging]: Un bug viene rilevato (osservazione), si documentano le azioni che lo causano (documentazione), si formula un ipotesi riguardo a quali istruzioni nel codice possano causare quel bug (formulazione di ipotesi), si apportano le modifiche necessarie al codice per vedere se il bug continua a presentarsi (verifica dell'ipotesi), e si continuano a formulare e verificare altre ipotesi fino a quando il bug viene corretto. È buona pratica documentare, dove possibile e ragionevole, la causa del bug, in modo da evitare una *regression* (situazione dove lo stesso bug che era stato già risolto si ripresenta nel futuro), ed evitare di commettere lo stesso errore in futuro in altre parti del codice.

In conclusione, anche se la sua natura astratta, deduttiva ed esatta rende l'informatica di per sé è una disciplina affine alla matematica,[^numeri-causali] quando si passa al mondo pratico, e si devono analizzare dei dati digitali a fini processuali, l'informatica forense può essere considerata a pieno titolo una scienza naturale. Le sue valutazioni, pur essendo ispirate da una "scienza esatta", non possono che essere espresse in termini di probabilità, data la presenza di margini di incertezza ineliminabili nell'oggetto della materia.

[^numeri-causali]: Basta pensare al fatto che i computer sono incapaci di generare valori casuali. Nell'informatica si parla di *PRNG* (*pseudo-random number generator*, generatore di numeri pseudo-casuali). Il *Mersenne Twister* è il PRNG di default nelle librerie di molti linguaggi di programmazione, e permette di ricombinare una sequenza di bit iniziale chiamata *seed* (seme) in modo da generare (metaforicamente, far germogliare il seme in) una nuova serie di bit, che ad un osservatore umano sembrano casuali. Tuttavia, se si ottiene un sufficiente numero di output, diventa possibile calcolare lo stato interno del PRNG, e quindi prevedere i valori che saranno generati nel futuro. Il nome "pseudo-causale" deriva dal fatto che i risultati sono potenzialmente prevedibili. Un *CSPRNG* (*cryptographically-secure PRNG*, PRNG ad uso crittografico) presentano maggiori garanzie di robustezza (si deve dimostrare che anche conoscendo gli output precedenti, il prossimo output sia statisticamente imprevedibile, e che in ogni caso, sia impossibile risalire al *seed*). Il miglior *seed* per un (CS)PRNG è un singolo valore "realmente casuale", che può essere ottenuto soltanto facendo riferimento ad un elemento che si trovi all'esterno (ad esempio, misurando la temperatura della stanza, il movimento del mouse dell'utente, ecc &hellip;).

## Analisi e valutazione della prova informatica

Quanto detto finora serve a dimostrare che l'informatica forense usa una metodologia scientifica, e quindi che nonostante la natura "instabile" dell'oggetto di studio, i risultati non sono inaffidabili, ma hanno una certa validità dal punto di vista epistemologico.
Non si può parlare di "pseudoscienza", perché le conclusioni a cui la disciplina arriva hanno un fondamento empirico e scientifico.

Si può più ragionevolmente parlare di "scienza nuova", nel senso lato di novità dell'oggetto di studio, e quindi "meno affidabile", ma d'altro canto il progresso informatico è inarrestabile.
Inoltre, anche le scienze naturali sono in continua evoluzione, il loro obiettivo è creare un modello della realtà sempre più preciso: cercano, ma non pretendono, la perfezione.

Allo stesso modo, l'informatica forense si sforza di trovare le migliori modalità di acquisizione e valutazione dei dati informatici, ma data la complessità dei sistemi informatici, si può solo cercare di arrivare al migliore risultato possibile, anche se l'informatica di per sé ha natura affine alla matematica.

Idealmente, qualsiasi acquisizione dovrebbe essere svolta con le modalità della perizia, e la ispezione, perquisizione e sequestro di sistemi informatici si dovrebbe limitare esclusivamente ai supporti materiali.
L'uso di questi ultimi istituti nei confronti dei dati informatici è giustificabile solo quando è assolutamente necessario, perché i dati rischiano di essere cancellati o dispersi prima dell'inizio della perizia.

Per quanto riguarda la valutazione, le operazioni da compiere saranno determinate in concreto dal giudice caso per caso.
In linea generale, si possono fare alcune osservazioni.

Il perito, essendo imparziale, è tenuto a valutare in primo luogo l'attendibilità dei dati:

- Deve valutare se le modalità di acquisizione siano riuscite ad acquisire tutti i dati o solo parte di essi, se l'originale è stato modificato nel processo di acquisizione, e se la copia è conforme all'originale.
- Successivamente, deve valutare se i dati che sono stati acquisiti siano stati manomessi o meno prima dell'acquisizione. Dovrà considerare il normale funzionamento del sistema operativo e dei programmi informatici (le "leggi" e "teorie" scientifiche nell'informatica forense), verificare se ci sono irregolarità, e fornire le possibili spiegazioni per queste irregolarità.
- Infine, svolgerà le valutazioni richieste dal giudice. Dovrà indicare gli strumenti utilizzati, perché li sta utilizzando (facendo riferimento alla letteratura scientifica), e la loro attendibilità.

L'obiettivo del perito è di analizzare i dati informatici nel modo più completo ed oggettivo possibile, indicando i vari "decorsi causali" che hanno portato i dati ad avere quell'assetto, e la plausibilità di ogni ricostruzione.

L'obiettivo dei consulenti tecnici è di valutare gli stessi elementi in maniera soggettiva:

- Se le conclusioni del perito sono favorevoli alla parte, i consulenti tecnici cercheranno altri argomenti a supporto. Ad esempio, compieranno le stesse analisi con strumenti diversi per dimostrare che si arriva agli stessi risultati, o dimostreranno l'assenza di decorsi causali alternativi che avrebbero potuto portare allo stesso risultato.
- Se le conclusioni sono sfavorevoli, i consulenti tecnici potranno usare varie linee difensive:
  - I dati sono stati acquisiti usando tecniche inadeguate, quindi l'analisi è viziata *ab origine*, fin dall'inizio.
  - Il perito ha usato modalità di analisi originali, nuove, non sufficientemente condivise dalla comunità scientifica, inadeguate, che non rispettano i principi fondamentali dell'informatica forense&hellip;---e pertanto, sono poco affidabili.
  - È possibile svolgere le stesse analisi con strumenti o tecniche diverse, giungere a risultati diversi, ed argomentare che la metodologia usata dal consulente è più affidabile di quella del perito.
  - Lo stato dei dati informatici può essere spiegato da altri fattori, che il perito non ha considerato, o a cui non ha dato sufficiente peso.

L'obiettivo del consulente tecnico del difensore non è necessariamente di provare un fatto nuovo, che contraddice la valutazione del perito.
È sufficiente ingenerare un "ragionevole dubbio" nel giudice per evitare una sentenza di condanna (art. 533 co. 1 c.p.p.).

In particolare, l'attività del consulente tecnico del difensore non può causare con dolo un danno alla parte assistita, altrimenti integrerebbe il reato di consulenza infedele (art. 380 c.p.) [@Canestrari2016, 273].

La linea che divide il contributo del consulente dal favoreggiamento personale (art. 378 c.p.) è analoga a quella prevista per l'avvocato.
Le attività materiali che ostacolano le indagini (ad esempio, suggerire come distruggere le prove, o manomettere i dati digitali) integrano sicuramente il reato.
Le attività puramente intellettuali e tecniche, come suggerire indagini al perito, o contestare la sua ricostruzione, sono ammesse (e doverose) [@Canestrari2016, 252].

Ai consulenti tecnici di parte non è applicabile il reato di falsa perizia (art. 373 c.p.), perché come il nome suggerisce, è un reato proprio, che può essere commesso solo da un perito (o consulente tecnico d'ufficio, nel processo civile).
Il reato non è applicabile nemmeno al consulente del PM, nonostante il fatto che PM sia tenuto a svolgere indagini "oggettive", cercando (più realisticamente, non ignorando) elementi a favore dell'indagato (art. 358 c.p.p.) [@Canestrari2016, 265].
Ciò è impedito dal divieto generale di applicazione per analogia delle leggi penali (art. 14 preleggi).

I consulenti tecnici vengono sentiti come testimoni dal giudice, quindi si può configurare il reato di falsa testimonianza (art. 372 c.p.).
Questo significa che il consulente non può "afferma[re] il falso o nega[re] il vero, ovvero tace[re], in tutto o in parte, ciò che sa intorno ai fatti sui quali è interrogato".

Secondo la Cassazione, questo obbligo grava sicuramente sul consulente del PM [@Romano2015], che quindi è tenuto a dare giudizi tecnici veritieri.
Secondo la dottrina, il consulente tecnico del difensore non è soggetto allo stesso obbligo [V. nota 99 in @Renzetti2015, 416].
L'interpretazione più ragionevole è che il consulente del difensore non sia tenuto ad deporre sulle circostanze a sfavore dell'imputato.
È sempre meglio interpretare il dato di fatto nella maniera più favorevole all'imputato, che travisarlo intenzionalmente, mentire, e fornire una consulenza che sarà valutata con sfavore, perché fondata su una percezione erronea del fatto.

Il perito può arrivare a "conclusioni divergenti rispetto all'opinione comune corrente" [@Canestrari2016, 265], e non integrare il reato di falsa perizia, purché motivi adeguatamente le sue conclusioni.
A maggior ragione, i consulenti tecnici delle parti sono liberi di arrivare alla conclusione che va a vantaggio della loro parte, anche usando tecniche di analisi innovative, purché motivino adeguatamente il loro operato.

Dopo che il perito ed i consulenti hanno presentato le loro conclusioni, spetta al giudice valutare tutti gli elementi, e giungere alla decisione finale.
Il giudice deve tenere in conto le varie peculiarità della prova informatica:

In primo luogo, deve considerare la quantità e qualità dei dati che è stato possibile acquisire. Ad esempio, l'acquisizione forense di un disco rigido di cui si ha la disponibilità materiale dà maggiori garanzie rispetto all'acquisizione di singoli file da un servizio di *cloud storage* (archiviazione sul *cloud*) come Dropbox.

Successivamente, deve valutare la ragionevolezza intrinseca e l'adeguatezza dei metodi di analisi che sono stati utilizzati, specie se è stato necessario svolgere delle analisi innovative. Ad esempio:

- La ricerca di file per hash è concettualmente semplice. Si estraggono tutti i file trovati nel disco, si calcola il loro hash (una sorta di "impronta digitale") del file, e si verifica se questo hash rientra in una lista di hash già conosciuti (ad esempio, una lista di hash di file pedopornografici, di virus per computer &hellip;). È una tecnica concettualmente semplice da spiegare, e di natura meccanica, che non prevede margini discrezionali di valutazione [@Ferrazzano2014, 153].
- Esistono varie tecniche per verificare se un'immagine digitale è stata manipolata, ma per valutare la loro corretta applicazione è necessario comprendere il funzionamento dei formati digitali, è più difficile applicare queste tecniche in maniera meccanica, e c'è un margine discrezionale relativo alla loro valutazione [@Battiato2014, 16--20; @Ferrazzano2014, 152--153].

Infine, deve dare il giusto peso anche alle altre prove, e non dare un peso indebito (per eccesso o difetto) alla prova informatica. Ad esempio:

- Se tutte le altre prove convergono verso una versione dei fatti, e la prova informatica è in disaccordo con le altre prove, sarebbe irragionevole fare leva sul carattere tecnico e scientifico di quest'ultima, a danno delle altre prove.
- Nello stesso caso sopra indicato, sarebbe altrettanto irragionevole dare scarsa rilevanza alla prova informatica che è in disaccordo con le altre prove, per il solo fatto che il perito o i consulenti tecnici hanno dovuto usare strumenti di analisi innovativi. L'informatica è in continua evoluzione, e per i settori più all'avanguardia non si sono ancora formate delle *best practices* (buone prassi, condivise dalla comunità scientifica). In questi casi, il giudice deve valutare la ragionevolezza dell'argomentazione. Più gli esperti si sforzano di dimostrare che l'attività svolta non è "pseudoscienza", completamente scollegata dai principi della materia, ma cerca di adattare le conoscenze e tecniche largamente condivise ai casi nuovi, e più il giudice deve considerare l'analisi come ragionevole. Naturalmente, non è vincolato ai risultati, ma è tenuto a valutare con serietà la prova.

<!--
- programmi open-source disponibili per le operazioni di informatica forense
- risorse NIST: https://www.nist.gov/itl/ssd/software-quality-group/computer-forensics-tool-testing-program-cftt
TODO: metodo scientifico
-->
