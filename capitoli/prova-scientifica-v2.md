# Dati informatici

## Dati, informazioni e decisioni

Una regola generale del diritto è che le decisioni devono essere motivate.
Il soggetto che prende una decisione deve dare conto (anche sommariamente) degli elementi che ha considerato, di come li ha valutati, e quale percorso logico ha seguito per arrivare all determinazione finale.
Anche nei casi in cui non è necessario rendere conto della motivazione[^decreti-non-motivati] esiste sempre un processo decisionale.

[^decreti-non-motivati]: Ad esempio, i decreti del giudice devono essere motivati solo quando la legge lo richiede (art. 135 co. 4 c.p.c.; art. 125 co. 3 c.p.p.).

Il processo inizia con la raccolta di dati (elementi oggettivi), che devono essere valutati ed interpretati per ottenere informazioni utili per il caso concreto (elementi soggettivi).
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

## Caratteristiche dei dati informatici

I dati informatici presentano alcune caratteristiche distintive, che possono essere brevemente riassunte con i termini "malleabilità" e "riproducibilità".
Esistono numerosi modi in cui i dati informatici possono essere modificati.
Rilevare e analizzare queste modifiche non è una scienza esatta, ma è necessario per la loro corretta valutazione.
Un elemento a favore dei dati digitali è la loro riproducibilità.
Così come è facile modificarli, è facile anche riprodurli.

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

[^unrecoverable-read-errors]: \VediUrl{T. Pott, I. Thomson}{Flash banishes the spectre of the unrecoverable data error}{2022}{https://www.theregister.com/2015/05/07/flash_banishes_the_spectre_of_the_unrecoverable_data_error}.

Un secondo corollario è che i dati informatici possono essere modificati in maniera anonima, senza lasciare tracce.
Se si ha accesso fisico al supporto materiale, ed è possibile collegarlo ad un altro computer, in linea teorica, è sempre possibile modificare i suoi contenuti.

Nella pratica, si possono incontrare alcuni limiti.
In alcuni casi, la natura stessa del supporto materiale impedisce la sua modificazione. Ad esempio, i dati nei supporti materiali ottici (CD, DVD, Blu-Ray &hellip;) sono rappresentati incidendo in maniera irreversibile il supporto con un raggio laser.

Ancora, il supporto materiale prevede delle misure di sicurezza implementate a livello di *hardware*. Ad esempio, il supporto si rifiuta di funzionare a meno che non venga inserita una password, una chiave di sicurezza &hellip; Aggirare questo tipo di misure di sicurezza richiederebbe un intervento materiale sul dispositivo, con enorme rischio di perdere o danneggiare i dati.

Viceversa, le misure di sicurezza implementate a livello di software sono efficaci solo quando il sistema è attivo.
Se il sistema è spento, il software che controlla l'applicazione delle *ACL* (*access-control lists*, liste di controllo degli accessi) non è in esecuzione, e pertanto è possibile accedere a qualsiasi file.

L'unica misura di sicurezza a livello di software utile per prevenire gli accessi anche quando il sistema non è in esecuzione è l'uso della *encryption at-rest* (crittografia "a riposo").[^CrittografiaRiposo]
È sempre possibile leggere i contenuti di un file cifrato, ma se non si dispone della chiave di cifratura, è impossibile decifrarli ed esaminarli.

[^CrittografiaRipso]: La *encryption at-rest* non usa tecniche diverse rispetto alla normale crittografia, ma serve solo ad evidenziare che i dati cifrati sono conservati in maniera stabile sul supporto materiale. Fino dai suoi albori (si pensi al cifrario di Cesare) l'uso tipico della crittografia è stato principalmente di proteggere dati che venivano trasmessi attraverso canali di comunicazione non sicuri, piuttosto che di proteggere dati archiviati in maniera stabile.

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

## TODO Dati informatici come fatti

- Reati informatici: propri, impropri
- Dati digitali per le investigazioni
- Intercettazioni
- Esperimenti giudiziali

## Dati informatici come atti

I dati informatici possono rappresentare anche atti.
Ad esempio, il documento informatico è definito dal CAD[^codice-amministrazione-digitale] come "il documento elettronico che contiene la rappresentazione informatica di atti, fatti o dati giuridicamente rilevanti" (art. 1, lett. *p*).

[^codice-amministrazione-digitale]: D.Lgs. 82/2005.

Il processo consiste in una "serie di atti fra loro collegati, diretti ad un risultato finale." [@Ricci2017, 233]
Pertanto, nel processo telematico, i dati informatici non rilevano solo ai fini della motivazione, ma costituiscono loro stessi l'esistenza del processo.
A questo punto, è necessario considerare il problema della corretta acquisizione, valutazione, conservazione, e più in generale, trattazione dei dati informatici a fini procedurali e processuali.

## Informatica forense

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
Esistono una serie di standard ISO/IEC relativi alla gestione della prova informatica ed investigazione dei dati digitali [@Gammarota2016, 27--28].

## TODO Informatica come scienza

Storicamente, l'informatica forense si è sviluppata all'interno del procedimento penale.
La Costituzione definisce la libertà personale come "inviolabile" (art. 13), e pertanto, ogni sua limitazione deve essere eccezionale, e fondarsi su motivi gravi e precisi.

La sentenza di condanna può essere pronunciata solo e soltanto "se l'imputato risulta colpevole del reato contestatogli al di là di ogni ragionevole dubbio" (art. 533 c.p.p.).
Per quanto riguarda le misure cautelari, si richiede sempre la presenza di "gravi indizi di colpevolezza" (art. 273 co. 1 c.p.p.), e per quanto riguarda specificamente la custodia cautelare in carcere, si prevede che "può essere disposta soltanto quando le altre misure coercitive o interdittive, anche se applicate cumulativamente, risultino inadeguate" (art. 275 co. 3 c.p.p.).

Queste premesse richiedono il maggiore rigore possibile nella trattazione del dato informatico.

- conoscenza scientifica come miglior modo di conoscere la realtà (Marinucci)
- informatica come scienza
- informatica forense nel processo: prova scientifica

## TODO Prova informatica

- Inquadramento concreto della prova informatica:
    - Valutazione caso per caso, in base alla funzione dei dati, alla ripetibilità dell'operazione, quanto sono importanti per la prova del fatto, per i diritti fondamentali della persona
    - Garanzie minime: accertamento tecnico non ripetibile (art. 117 disp. att. -- Gammarota, informazioni a persona soggetta a fermo), prova atipica o documento
    - Garanzie massime: acquisizione e valutazione mediante perizia
- uso di software scientifico

# TODO

## Fasi per il trattamento della prova informatica

## Istituti processuali e programmi utilizzabili ...

- istituti processuali in cui rileva la digital evidence
- programmi open-source disponibili per le operazioni di informatica forense
- risorse NIST: https://www.nist.gov/itl/ssd/software-quality-group/computer-forensics-tool-testing-program-cftt
