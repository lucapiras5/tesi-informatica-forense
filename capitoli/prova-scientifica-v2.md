# Dati informatici e prova informatica

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

- Cause esterne o naturali, come i *bit flip* (inversione di singoli bit) dovuta a raggi cosmici.[^bit-flip-raggi-cosmici]
- Cause interne o meccaniche, come gli *unrecoverable read errors*[^unrecoverable-read-errors] (errori di lettura irrimediabili) che sono dovuti al fatto che il supporto materiale è pur sempre un oggetto imperfetto.

[^bit-flip-raggi-cosmici]: \VediUrl{T. Long}{This Week in Glean: What Flips Your Bit?}{2022}{https://blog.mozilla.org/data/2022/04/13/this-week-in-glean-what-flips-your-bit/}.

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

## Informatica forense

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
# Prova informatica nel processo penale

## Fasi per il trattamento della prova informatica {#fasi-trattamento-prova-informatica}

Il trattamento della prova informatica può essere diviso in sette fasi [@Ferrazzano2014, 29].

1. L'identificazione consiste nella ricerca dei supporti materiali che possono contenere dati informatici utili. Si devono considerare le loro caratteristiche, in modo da stabilire le priorità e modalità di acquisizione [@Ferrazzano2014, 29--30].
2. La raccolta consiste nel rimuovere fisicamente i supporti materiali su cui i dati sono conservati, e qualsiasi altro oggetto che sia necessario per il loro funzionamento, o utile per le indagini. In alcuni casi (sistemi informatici che devono rimanere accesi perché erogano servizi essenziali, dati presenti su server di terze parti &hellip;), la raccolta non è possibile, e si può procedere solo all'acquisizione [@Ferrazzano2014, 30--34].
3. L'acquisizione è la fase in cui si ottiene una copia dei dati informatici contenuti all'interno dei supporti. Le operazioni che vengono compiute devono essere documentate nella maniera più dettagliata possibile, in modo che i risultati possano essere valutati correttamente in seguito. Si devono prendere tutte le cautele necessarie affinché il supporto materiale originale non venga alterato, e si deve verificare la corrispondenza fra dati informatici originali e copiati mediante l'uso di almeno due[^AlmenoDueHash] *hash* crittografici [@Ferrazzano2014, 34--37].
4. Il trasporto dei supporti materiali e la conservazione dei dati richiede di usare le modalità necessarie per evitare il danneggiamento dei supporti prima della loro acquisizione (da urti, scariche elettrostatiche, polvere &hellip;), e la corretta conservazione dei dati (creazione di backup, verifica periodica degli *hash*) dopo che sono stati acquisiti. È particolarmente importante redigere un verbale anche per questa fase, che viene chiamato catena di custodia. Per ogni operazione che viene compiuta (trasporto dei supporti, acquisizione dei dati, verifica dell'integrità delle copie) si deve indicare il responsabile, dove e quanto è stata fatta, con quali modalità, e per quali motivi [@Ferrazzano2014, 37--38].
5. L'analisi è la fase in cui si va alla ricerca degli elementi utili a fine processuale. Il perito[^PeritoCTU] cerca gli elementi necessari per rispondere ai quesiti posti dal giudice (art. 226 co. 2 c.p.p.), mentre i CT[^ConsulentiTecniciCTP] cercheranno elementi a favore della parte processuale assistita (PM o difensore) [@Ferrazzano2014, 39--40].
6. La valutazione è strettamente legata all'analisi, ed è svolta dagli stessi soggetti. La perizia "è ammessa quando occorre svolgere indagini o acquisire dati o valutazioni che richiedono specifiche competenze tecniche, scientifiche e artistiche" (art. 220 co. 1 c.p.p.). I CT possono formulare "osservazioni e riserve, delle quali deve darsi atto nella relazione" del perito (art. 230 co. 2 c.p.p.), e se "non è stata disposta perizia \Omissis{} possono esporre al giudice il proprio parere, anche presentando memorie" (art. 233 co. 1 c.p.p.). L'analisi individua i dati informatici rilevanti, la valutazione è il momento in cui questi dati vengono interpretati in modo che risultino utili per il processo. Il perito, data la sua natura di ausiliario del giudice, fornisce un'interpretazione imparziale. I consulenti tecnici forniscono interpretazioni favorevoli alla parte assistita, e che contraddicono quanto affermato dall'altra parte, o perlomeno screditano l'attendibilità della loro posizione.
7. La presentazione è la fase finale, dove le valutazioni svolte dal personale tecnico vengono concretamente acquisite all'interno del processo. Il perito e gli eventuali CT vengono inseriti nelle liste testimoniali (art. 468 c.p.p.). In ogni caso, il giudice acquisisce la relazione finale del perito (art. 227 c.p.p.) e le memorie scritte dai CT (art. 233 co. 1 c.p.p.).

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

## Metodo scientifico nell'informatica forense

Nel caso dell'informatica forense, non si può negare la maturità ed autonomia della disciplina, sarebbe inopportuno ritenerla una "scienza nuova" e ricondurla all'interno della prova atipica.

Il problema è nella continua evoluzione dell'oggetto del suo oggetto di studio.
Nell'ambito delle scienze naturali, i fenomeni naturali non cambiano, cambiano solo le teorie ed i modelli che gli scienziati sviluppano per spiegarli.
Viceversa, nell'ambito dell'informatica forense, i supporti, sistemi, programmi e dati informatici sono in continua evoluzione.
Questo potrebbe far pensare che l'analisi della prova informatica si fondi sempre, o quasi sempre, su teorie originali, che non sono state oggetto di discussione in dottrina.

Spesso i sistemi operativi, programmi informatici, protocolli per la trasmissione dei dati, e formati per la conservazione dei dati possono essere proprietari.
Nei casi peggiori:

- I supporti materiali su cui i dati sono memorizzati potrebbero non essere rimovibili (è il classico caso degli smartphone, o di altri dispositivi creati per uno scopo particolare, come gli apparecchi elettromedicali), o potrebbero non usare interfacce standard. In questo caso, l'unico modo di acquisire dati è di usare il dispositivo stesso, con limiti alla quantità di dati che è possibile estrarre (è improbabile ottenere una copia forense dell'intero dispositivo, al più ci si dovrà accontentare di singoli file o dati diagnostici), ed il rischio di modificare i dati perché si sta utilizzando il dispositivo.
- Spesso i programmi e dati non sono documentati pubblicamente: ad esempio, con riguardo per le specifiche tecniche per i formati ed i protocolli, dettagli riguardo come il sistema operativo ed i programmi interagiscono con i file dell'utente, dove si possono trovare file utili per le investigazioni (file di log, file temporanei, e-mail, i dati relativi al browser, ad altre applicazioni &hellip;) in che formato sono memorizzati.
- La documentazione viene fornita solo agli sviluppatori di software, ma solo su base discrezionale di chi produce il software, e coloro che la ricevono sono vincolati da un *NDA* (*non-disclosure agreements*, accordi di riservatezza), e quindi non possono condividere le informazioni con il pubblico.
- Anche nei casi in cui la documentazione venga fornita, potrebbe essere incompleta o inadeguata per i fini specifici delle investigazioni di informatica forense.
- In ogni caso, qualsiasi aggiornamento del software potrebbe sconvolgere la ricerca accumulata fino a quel momento.

In tutti questi casi, è necessario:

- Per i ricercatori, valutare il loro funzionamento secondo il metodo scientifico.
- Per i periti e consulenti che si avvalgono della ricerca, dimostrare la ragionevolezza della ricerca esistente, o dei passi che hanno intrapreso per risolvere i quesiti posti dal giudice, facendo riferimento ai principi fondamentali della materia.

<!--
- programmi open-source disponibili per le operazioni di informatica forense
- risorse NIST: https://www.nist.gov/itl/ssd/software-quality-group/computer-forensics-tool-testing-program-cftt
TODO: metodo scientifico
-->
