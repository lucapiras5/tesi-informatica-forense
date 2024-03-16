# Informatica forense

## Definizione di informatica forense

Nel tempo, sono state date numerose definizioni dell'informatica forense,^[Per un elenco, v. @Gammarota2016, p. 16.] che iniziano con "l'informatica forense riguarda la &hellip;", e continuano con un elenco di attività tipiche.^[Ad esempio, la ricerca, protezione, identificazione, estrazione, documentazione, analisi, esibizione, conservazione, interpretazione, ecc. di mezzi di prova, prove informatiche o elettroniche, dati del computer, ecc.]

Queste definizioni presentano due problemi:

- Non sempre evidenziano l'aspetto "forense" della disciplina,^[Ossia, il fatto che le attività dell'informatica forense sono tendenzialmente destinate a confluire all'interno di un procedimento giudiziario.] e si concentrano solo sugli aspetti tecnici;
- L'uso di elenchi dà l'impressione della tassatività,^[È difficile immaginare in anticipo ed in astratto ogni attività tipica, ed in ogni caso, l'evoluzione della disciplina può portare alla definizione di nuove attività tipiche.] e pone problemi di interpretazione.^[Ad esempio, si può discutere se i termini "conservazione" e "protezione" significhino la stessa cosa, oppure se la "conservazione" riguardi la creazione di copie di backup ed il controllo periodico dell'integrità dei dati, mentre la "protezione" riguardi l'applicazione di misure di sicurezza come cifratura e controllo degli accessi.]

Questi problemi possono essere superati usando definizioni che evidenziano il collegamento fra l'informatica ed il diritto, e fanno riferimento a concetti più generali ed astratti, invece di usare il metodo induttivo.

Si consideri la definizione di *digital evidence*^[Prova informatica.] data da @Casey2011 [7]:

> [A]ny data stored or transmitted using a computer that support or refute a theory of how an offense occurred or that address critical elements of the offense such as intent or alibi.^[Qualsiasi dato archiviato o trasmesso per mezzo di un computer che corrobora o confuta una teoria su come si sia verificato un reato, o che riguarda gli elementi più importanti del reato, come il movente o l'alibi.]

Il pregio di questa definizione è che collega esplicitamente la prova informatica al diritto penale, ed indica la sua funzione in maniera generale.^[L'elenco al termine della definizione ha una finalità puramente illustrativa, e non definitoria.] Il problema fondamentale è che non indica come la prova informatica deve essere trattata, e a quali discipline si deve fare riferimento.

La definizione di informatica forense data da @Gammarota2016 [26--27] risolve il secondo problema:

> L'informatica forense studia le norme giuridiche ed le tecniche informatiche per il trattamento dei dati digitali a fini processuali.

La definizione è breve, ma l'autore evidenzia la necessità di interpretarla nella maniera più ampia possibile:

- "Fini processuali": include qualsiasi procedimento decisionale in cui i dati informatici possano assumere rilevanza;^[Pertanto, non solo il processo e procedimento penali, ma anche quelli civili, amministrativi, tributari, ecc. Se le regole valgono per il processo che incide in maggiore misura sui diritti fondamentali della persona, a maggiore ragione devono valere per tutti gli altri tipi di processo.] 
- "Trattamento": significa la corretta gestione del dato informatico per qualsiasi fine,^[Le regole sul trattamento dei dati non valgono solo all'interno dei procedimenti decisionali, ma anche per garantire il corretto trattamento dei dati informatici come atti giuridici. Ad esempio, si consideri come l'uso di firme elettroniche fanno fede fino a prova contraria (art. 20 co. 1-ter CAD). L'uso e verifica delle firme digitali interessa all'informatica forense, anche se l'atto non sarà presumibilmente usato in un procedimento giudiziario.] e in qualsiasi momento;^[Anche prima dell'intervento del personale specializzato (ad esempio, la PG deve assicurare le fonti di prova; art. 55 co. 1 c.p.p.), e anche dopo la conclusione definitiva del procedimento (si pensi ai casi di impugnazioni straordinarie).]
- "Norme giuridiche": significa qualsiasi norma che, anche se solo indirettamente o in maniera condizionata, può riguardare l'uso di dati informatici.
- "Tecniche informatiche": riguardano l'intera disciplina dell'informatica.^[Non solo il mondo accademico, ma anche l'attività di ricerca libera e non formalizzata svolta dall'industria, da ricercatori indipendenti, dai pratici della disciplina (v. @Gammarota2016, p. 34), e le *best practices* (migliori prassi) che vengono pubblicate da enti nazionali, e da organizzazioni internazionali e sovranazionali (ad esempio, esistono una serie di standard ISO/IEC relativi al trattamento della prova informatica ed investigazione dei dati digitali, v. @Gammarota2016, p. 27--28.]

## Reati informatici

La progressiva informatizzazione della società ha comportato che anche i criminali iniziassero ad usare strumenti informatici per commettere reati. Una particolarità degli strumenti informatici è che permettono anche un singolo individuo di causare danni enormi.^[Ad esempio, si pensi al *Morris worm*, che in 24 ore riuscì a diffondersi sul 10% dei 60.000 computer allora connessi ad internet. L'obiettivo del *worm* non era di distruggere dati, ma di causare quello che oggi sarebbe chiamato un *denial of service attack* (attacco per l'interruzione del servizio). V. Federal Bureau of Investigation, *The Morris Worm*, 2018, <https://www.fbi.gov/news/stories/morris-worm-30-years-since-first-major-attack-on-internet-110218>. Ancora, si pensi alla distribuzione di materiale protetto dal diritto d'autore o di materiale pedo-pornografico mediante tecnologie *peer-to-peer* (v. @Ferrazzano2014, p. 99 ss.), dove una singola persona può distribuire quel materiale ad un numero potenzialmente illimitato di altri utenti.]

In molti casi, era possibile qualificare il fatto commesso mediante un sistema informatico all'interno dei reati tradizionali.^[Ad esempio, negli Stati Uniti il fatto che i dati informatici avessero natura intangibile ed immateriale era irrilevante: che avevano comunque un valore economico, e pertanto si potevano applicare le figure di reato tradizionali; v. @Nugent1991, p. 2.] Tuttavia, in alcuni casi questa operazione non era possibile,^[Secondo alcune corti, questa interpretazione estensiva dei reati tradizionali sconfinava nella creazione di nuove figure di reato da parte dei giudici, che andava a violare i principi costituzionali del *due process of law* (giusto processo), o della separazione dei poteri. In altri casi, i reati commessi con strumenti informatici non potevano essere ricondotti alle figure di reato tradizionali, e pertanto era necessario crearne di nuove.] e gli stati iniziarono a dotarsi di leggi sui reati informatici.

Negli Stati Uniti, la prima legge fu approvata in Florida, nel 1978, e quasi tutti gli altri Stati si dotarono di proprie leggi nel corso di poco più di un decennio [@Nugent1991, 2--4]. In Italia, il codice penale viene riformato nel 1993.^[La L. 47/1993 modifica i reati tradizionali, aggiungendo riferimenti espliciti ai sistemi informatici e telematici, ed i dati e programmi in essi contenuti. V. @Gammarota2016, p. 71.]

Per quanto riguarda il diritto penale sostanziale, la prima funzione dell'informatica forense è di fornire i termini tecnici e le conoscenze per definire ed interpretare le figure di reato, ed i beni giuridici protetti.^[In altre parole, l'informatica forense aiuta il legislatore a rispettare il principio di tassatività, per cui i reati devono essere descritti in maniera chiara e precisa, ed il principio di offensività, per cui i reati devono proteggere i beni giuridici solo dalle modalità di aggressione più gravi.]

È possibile distinguere fra due tipi di reato, in base al bene giuridico protetto:^[La distinzione è ripresa da @Gammarota2016, p. 29.]

- Nei reati informatici "propri", il bene (o uno dei beni) protetti sono i dati o sistemi informatici.^[Ad esempio, nel danneggiamento di informazioni, dati e programmi informatici (art. 635-*bis* c.p.) l'unico bene protetto sono i dati in sé, mentre nella frode informatica (art. 640-*ter* c.p.) si protegge sia il corretto funzionamento del sistema informatico, sia il patrimonio della persona (ad esempio, i *ransomware* sono un caso di frode informatica, perché criptano i dati e programmi degli utenti, impedendone l'uso e accesso, e richiedono il pagamento di un riscatto per decriptarli).] Per la prova di questo tipo di reati, è assolutamente necessario acquisire i dati informatici;^[Altrimenti, sarebbe impossibile provare che il sistema informatico è stato aggredito dal reato.]
- Nei reati informatici "impropri", i dati e sistemi informatici sono lo strumento con cui il reato è commesso, e non il bene protetto.^[Ad esempio, si penis ad una truffa (art. 640 c.p.) dove gli "artifizi e raggiri" vengono creati mediante l'uso di sistemi informatici, come la clonazione della voce di una persona. V. A. Kohli, *From Scams to Music, AI Voice Cloning Is on the Rise*, 2023, <https://web.archive.org/web/20230429203350/https://time.com/6275794/ai-voice-cloning-scams-music/>.] In questo caso, il reato non deve essere necessariamente provato usando i dati informatici.^[Perlomeno, almeno in teoria non è strettamente necessario doverli acquisire per poter provare il fatto, ma naturalmente, la ricostruzione del fatto sarebbe agevolata avendo a disposizione più informazioni possibile.]

Più in generale, i dati informatici possono essere utili per l'accertamento di qualsiasi altro reato.^[Ad esempio, si pensi al caso in cui una persona commetta un omicidio con un'arma acquistata illegalmente per mezzo di sistemi informatici. Anche in questo caso, sapere come la persona è entrata in possesso dell'arma non è necessario per provare l'omicidio, ma è comunque un'informazione utile.] La seconda funzione dell'informatica forense è di indicare le corrette modalità di trattamento dei dati informatici, in modo che possano essere utilizzati per la prova del fatto.^[È preferibile usare sempre la massima cautela nel trattamento dei dati, anche quando si pensa di usarli solo come elementi per orientare le indagini, perché esiste sempre il rischio di danneggiarli, e potrebbe essere impossibile acquisirli di nuovo.]

## Informatica forense nel procedimento penale

L'informatica forense ha un'importanza fondamentale anche per il diritto processuale. Permette di emendare il codice con nuovi istituti, o reinterpretare ed adattare gli istituti esistenti, in modo da adeguarli alle esigenze dei dati informatici.^[Il codice è stato scritto pensando alle prove "tradizionali" e materiali, ma i dati informatici sono caratterizzati dall'essere intangibili.]

<!-- Caratteristiche dei dati informatici e fasi del trattamento sono menzionate in un capitolo successivo -->

Negli Stati Uniti, la cultura processuale è stata sempre aperta alla discussione dei principi, strumenti e metodologie scientifiche usate per ricostruire e valutare il fatto all'interno del contraddittorio. Viceversa, in Italia la cultura processuale preferisce l'uso delle prove precostituite alle prove costituende [@Gammarota2016, pp. 11--12, 22--23].

Lo svantaggio della preferenza per le prove precostituite è che può facilmente portare all'acquisizione, analisi e valutazione di dati informatici senza l'uso di garanzie adeguate, o l'ausilio di personale tecnico.^[Le prove informatiche potrebbero benissimo essere considerate dei documenti (art. 234 c.p.p.), possono essere acquisite perché sono il corpo del reato (art. 235 c.p.p.), o perché provengono dall'imputato (art. 237 c.p.p.), e possono essere valutate dal giudice senza il contributo di un perito o dei consulenti tecnici delle parti, perché in fondo, non sono troppo diversi da una fotografia.]

Il legislatore è pienamente capace di considerare la caratteristiche particolari di un mezzo di prova, e prevedere cautele apposite.^[Ad esempio, si consideri la disciplina minuziosa prevista per la ricognizione di persone. Un intero articolo è dedicato agli atti preliminari, si prevede l'esecuzione e la menzione di questi adempimenti nel verbale a pena di nullità, e gli articoli successivi regolano lo svolgimento, e altri tipi di ricognizione (artt. 213--216 c.p.p.). Il legislatore sa che la memoria umana è labile, e quindi istituisce una disciplina articolata per una prova che si fonda interamente sul riconoscere qualcuno o qualcosa, a distanza di tempo.] La legge di ratifica della Convezione di Budapest del 2001^[V. L. 48/2008.] ha il pregio di aver introdotto per prima i principi per il trattamento dei dati informatici, ma il grave difetto di non aver introdotto sanzioni processuali in caso della loro violazione.^[Pertanto, si corre il rischio che la fase del dibattimento venga contaminata da prove acquisite incorrettamente, e che anche se considerate come inaffidabili ai fini della decisione, potrebbero comunque falsare il giudizio del giudice.]

### Prova documentale

Se la prova informatica consiste in dati informatici che vengono acquisiti nel processo, è più corretto parlare di "prova documentale informatica" [@Gammarota2016, 68--69].
Il dato informatico rientra sicuramente nella definizione estremamente generica di documento data dal codice (art. 234 c.p.p.):

> È consentita l'acquisizione di scritti o di altri documenti che rappresentano fatti, persone o cose mediante la fotografia, la cinematografia, la fonografia o qualsiasi altro mezzo.

Le parti possono chiedere l'ammissione di documenti (art. 495 co. 3 c.p.p.), i documenti informatici sono inseriti nel fascicolo del dibattimento (art. 515 c.p.p.), ed il giudice ne prende cognizione ai fini della decisione (art. 526 co. 1 c.p.p.).
Se l'unica operazione che il giudice sta compiendo è semplicemente prendere cognizione del mezzo di prova, non c'è una differenza significativa tra uno scritto o un file PDF, una fotografia o un file JPG.

Dato che il giudice è *peritus peritorum* (perito dei periti), e può discostarsi dai risultati della perizia, può anche decidere discrezionalmente se al fine di valutare l'elemento di prova, serva o sia opportuno l'intervento di un perito, oppure se siano sufficienti le conoscenze della persona media [@Renzetti2015, 405--406].

### Prova atipica

Una seconda possibile qualificazione per la prova informatica è la prova atipica (art. 189):

> Quando è richiesta una prova non disciplinata dalla legge, il giudice può assumerla se essa risulta idonea ad assicurare l'accertamento dei fatti e non pregiudica la libertà morale della persona. Il giudice provvede all'ammissione, sentite le parti sulle modalità di assunzione della prova.

Ad esempio, i dati prodotti dall'operazione di controllo satellitare mediante GPS sono considerati una prova atipica [@Renzetti2015, 404], perché l'attività di pedinamento in generale è considerata un'attività di indagine atipica [@Conso2020, 449].

Questa impostazione deve essere superata.
La prova atipica è una norma di chiusura del sistema, e deve essere usata in casi estremi, solo quando le modalità che si intendono usare non sono assolutamente riconducibili ad una prova tipica e già disciplinata dal legislatore.
Al più può essere utilizzata per le prove scientifiche "nuove" e "controverse".
In questo caso, le parti discutono se la prova scientifica sia effettivamente idonea ad accertare i fatti, in modo da evitare alla radice l'ammissione di *junk science* (pseudoscienza) nel processo [@Renzetti2015, 406--408].

Il limite più grave della prova atipica è che non sono previste garanzie a tutela dei diritti fondamentali delle persone, o cautele da seguire per la corretta acquisizione della prova.
Se questo tipo di prova va ad incidere su libertà fondamentali della persona costituzionalmente garantite, deve essere considerata inammissibile [@Conso2020, 449].

Ancora, in alcuni casi il legislatore prevede una serie minuziosa di regole e sanzioni processuali.
Si pensi alla disciplina meticolosa prevista per la ricognizione di persone.
Un intero articolo è dedicato agli atti preliminari, si prevede l'esecuzione e la menzione di questi adempimenti nel verbale a pena di nullità, e gli articoli successivi regolano lo svolgimento, e altri tipi di ricognizione (artt. 213--216 c.p.c.).

Il motivo di queste cautele è che il legislatore sa che la memoria umana è estremamente fragile, e servono cautele particolari.
Nel caso della prova atipica, queste regole e cautele devono essere decise caso per caso dalle parti, con seri problemi di disuguaglianza di trattamento fra i vari casi, e l'unica "sanzione" ipotizzabile è il fatto che il giudice darà peso minimo o nullo a quella prova.

### Accertamenti tecnici irripetibili

È opportuno considerare gli accertamenti tecnici che hanno ad oggetto dati informatici come non ripetibili:

- Perché possono essere considerate "cose \Omissis{} il cui stato è soggetto a modificazione" (art. 360 c.p.p.). È possibile modificare un sistema informatico senza lasciare tracce\VediRef{sez-caratteristiche-dati-informatici}, un sistema informatico acceso esegue un grande numero di processi non visibili all'utente che modificano dati [@Gammarota2016, 149].
- Perché "l'accertamento tecnico determina modificazioni delle cose \Omissis{} tali da rendere l'atto non ripetibile" (art. 127 disp. att. c.p.c.). L'esecuzione di qualsiasi operazione su un sistema acceso, e persino lo spegnimento ordinario del sistema (invece che staccare la spina) alterano un grande numero di file [@Cinti2011, 93--95].

L'inquadramento come un'operazione irripetibile ha il vantaggio di permettere la riserva di incidente probatorio, e una sanzione processuale di inutilizzabilità.
L'unico caso in cui il PM può procedere comunque, senza aspettare l'incidente probatorio, è l'assoluta necessità di procedere immediatamente agli accertamenti, che diventerebbero inutili se differiti.
Se in seguito si dimostra che era possibile attendere l'incidente probatorio, e che quindi l'accertamento è stato fatto con modalità irripetibili senza reale necessità, i risultati sono inutilizzabili (art. 360 co. 4 e 5 c.p.c).

### Ispezioni e perquisizioni

Le ispezioni e perquisizioni possono avere per oggetto un sistema informatico, ma si devono usare "misure tecniche dirette ad assicurare la conservazione dei dati originali e ad impedirne l'alterazione" (art. 244 co. 2 e 247 co. 1-bis c.p.p.).
L'ispezione serve ad "accertare le tracce e gli altri effetti materiali del reato" (art. 244 co. 1 c.p.p.), mentre la perquisizione serve a cercare il "corpo del reato o cose pertinenti al reato" (art. 247 co. 1 c.p.p.).

Dato l'espresso richiamo alla conservazione dei dati originali contenuto in entrambe le norme, è preferibile acquisire una copia del dispositivo, ed eseguire le operazioni su di esso, per evitare di modificare l'originale.
La copia dei dati può essere ricondotta al sequestro, perché quest'ultimo riguarda l'acquisizione del "corpo del reato", definito come "le cose sulle quali o mediante le quali il reato è stato commesso" (art. 253 c.p.p.).
Pertanto, diventa difficile distinguere fra ispezione e perquisizione di un sistema informatico.

### Intercettazioni mediante captatore

- Definizione di intercettazione, di captatore.
- Problema dell'affidabilità, del diritto alla difesa.

### Perizia e consulenza tecnica

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
Non deve preferire le conclusioni del perito rispetto a quelle del consulente tecnico, e non deve preferire il consulente del PM rispetto al consulente della difesa, sulla base di una pretesa "maggiore oggettività", altrimenti si annichilisce il senso del modello accusatorio, e si ritorna al processo penale inquisitorio.

Soprattutto, la prova scientifica non ha maggiore peso rispetto alle altre prove solo perché è fondata su leggi scientifiche [@Renzetti2015, 421].
Il metodo scientifico è interamente fondato sulla continua revisione e falsificazione di teorie in modo da migliorarle.
Non rappresenta "la" verità, ma un "modo per arrivare alla verità".

È perfettamente normale che esistano contemporaneamente più teorie scientifiche che spiegano lo stesso fenomeno.
Anche quando si dimostra la superiorità definitiva di una teoria, in futuro la stessa teoria potrebbe essere superata.
La scienza ha sicuramente basi epistemologiche solide, ma deve essere valutata liberamente ed in maniera critica, come tutte le altre prove.

È possibile usare leggi scientifiche che non siano unanimemente riconosciute, purché siano "maggiormente accolte" o "largamente condivise".
Il problema fondamentale è l'uso di teorie e tecniche scientifiche originali, che non sono stato oggetto di larga discussione [@Marinucci2020, 246].

## Dati informatici come atti

I dati informatici possono rappresentare anche atti.
Ad esempio, il documento informatico è definito dal c.a.d.[^codice-amministrazione-digitale] come "il documento elettronico che contiene la rappresentazione informatica di atti, fatti o dati giuridicamente rilevanti" (art. 1 lett. *p*).

Il processo consiste in una "serie di atti fra loro collegati, diretti ad un risultato finale." [@Ricci2017, 233]
Nel processo telematico i dati informatici non rilevano solo per ricostruire i fatti, ma rappresentano loro stessi l'essenza ed esistenza del processo.
In questo caso, è assolutamente necessario utilizzare le migliori tecniche disponibili per garantire la loro corretta acquisizione e conservazione.

[^codice-amministrazione-digitale]: D.Lgs. 82/2005.

Una regola generale del diritto è che le decisioni devono essere motivate.
Il soggetto che prende una decisione deve dare conto (in alcuni casi, anche solo sommariamente) degli elementi che ha considerato, di come li ha valutati, e quale percorso logico ha seguito per arrivare all determinazione finale.
Anche nei casi in cui non è necessario rendere conto della motivazione[^decreti-non-motivati] esiste sempre un processo decisionale.

[^decreti-non-motivati]: Ad esempio, i decreti del giudice devono essere motivati solo quando la legge lo richiede (art. 135 co. 4 c.p.c., art. 125 co. 3 c.p.p.).

Il processo inizia con la raccolta di "dati" (elementi oggettivi), che devono essere valutati ed interpretati dalle parti e dal giudice per ottenere "informazioni" utili a seconda dell'obiettivo da perseguire (elementi soggettivi) [La definizione di dato e informazione sono riprese da @Gammarota2016, 46--47].
La qualità della decisione è limitata dalla qualità dei dati "grezzi", e dalla loro corretta valutazione ed interpretazione.
Se i dati sono insufficienti, inaffidabili, o contraddittori, ed in ogni caso, se i dati vengono interpretati erroneamente[^interpretazione-erronea-dati] la decisione sarà viziata.
Il problema è riassunto in maniera efficace dalla massima inglese *garbage in, garbage out* (se entra spazzatura, esce spazzatura).

L'interpretazione è il momento più importante.
Se, anche inconsapevolmente, delle informazioni sbagliate o poco affidabili sono considerate valide e veritiere, la decisione finale sarà intrinsecamente fallace.
Dall'altro lato, una decisione che menziona espressamente l'incompletezza o inaffidabilità dei dati e ne tiene conto nella valutazione è intrinsecamente più valida.

[^interpretazione-erronea-dati]: Ispirandosi ai motivi di impugnazione di una sentenza in Cassazione, si potrebbe parlare di errore di fatto (l'interpretazione si fonda su una rappresentazione erronea dei dati), errore di diritto (inteso come cattiva applicazione di norme del diritto, e più in generale, delle regole tecniche che sono richiamate anche indirettamente dal diritto), e vizi di motivazione (la valutazione è insufficiente, poco chiara, o manifestamente illogica).

I dati informatici, più comunemente detti dati digitali,[^dati-informatici-digitali] possono essere usati per prendere decisioni.
Ad esempio, possono rilevare come elementi di prova all'interno di un processo (civile, penale, amministrativo&hellip;), come oggetto delle indagini preliminari nel procedimento penale [@Conso2020, 419], ai fini dell'istruttoria per un procedimento amministrativo, nei processi di ADR (*alternative dispute resolution*, risoluzione alternativa delle controversie) come l'arbitrato, nei procedimenti disciplinari&hellip;

[^dati-informatici-digitali]: La versione inglese della Convenzione sulla cibercriminalità (Budapest, 2001) usa l'espressione *digital data*, quella francese usa l'espressione *données informatiques*. Entrambe le versioni sono ufficiali, quindi le traduzioni letterali "dati digitali" o "dati informatici" sono intercambiabili. Anche se l'espressione "dati digitali" viene usato con maggiore frequenza di "dati informatici", nella presente trattazione si preferirà la seconda, per l'assonanza con il nome della disciplina "informatica forense".

## Apparente fragilità dell'informatica forense

TODO:

- fragilità metodologica --> dimostrazione che ha natura scientifica
- fragilità dell'oggetto di studio --> problema difficilmente superabile, ma a maggior ragione, impone maggiore rigore nel suo trattamento

Nel caso dell'informatica forense, non si può negare la maturità ed autonomia della disciplina, sarebbe inopportuno ritenerla una "scienza nuova" e ricondurla all'interno della prova atipica.

Il problema è nella continua evoluzione dell'oggetto del suo oggetto di studio.
Nell'ambito delle scienze naturali, i fenomeni naturali non cambiano, cambiano solo le teorie ed i modelli che gli scienziati sviluppano per spiegarli.
Viceversa, nell'ambito dell'informatica forense, i supporti, sistemi, programmi e dati informatici sono in continua evoluzione.
Questo potrebbe far pensare che l'analisi della prova informatica si fondi sempre, o quasi sempre, su teorie originali, che non sono state oggetto di discussione in dottrina.

Spesso i sistemi operativi, programmi informatici, protocolli per la trasmissione dei dati, e formati per la conservazione dei dati possono essere proprietari.
Nei casi peggiori:

- I supporti materiali su cui i dati sono memorizzati potrebbero non essere rimovibili (è il classico caso degli smartphone, o di altri dispositivi creati per uno scopo particolare, come gli apparecchi elettromedicali), o potrebbero non usare interfacce standard. In questo caso, l'unico modo di acquisire dati è di usare il dispositivo stesso, con limiti alla quantità di dati che è possibile estrarre (è improbabile ottenere una copia forense dell'intero dispositivo, al più ci si dovrà accontentare di singoli file o dati diagnostici), ed il rischio di modificare i dati perché si sta utilizzando il dispositivo.
- Spesso i programmi e dati non sono documentati pubblicamente, e la documentazione potrebbe essere fornita solo a sviluppatori di terze parti, a discrezione degli sviluppatori originali, e comunque con un vincolo di *NDA* (*non-disclosure agreement*, accordo di riservatezza), in modo che queste informazioni non possano essere condivise con il pubblico.
- Anche nei casi in cui la documentazione venga fornita, potrebbe essere incompleta o inadeguata per i fini specifici delle investigazioni di informatica forense, che mirano ad accertare l'integrità (non-manomissione) dei dati, e ricostruire le dinamiche che hanno portato ad un certo assetto dei dati. È molto probabile che le specifiche tecniche dei file e protocolli siano documentati in dettaglio, ma è meno probabile che il funzionamento del sistema operativo e dei programmi (quali file aprono, modificano, creano od eliminano durante il loro funzionamento, come i file vengono modificati, a quali condizioni, in che formato&hellip;) siano oggetto di descrizione.

In tutti questi casi, l'attività di ricerca è per forza di cose limitata e provvisoria.
Ancora, la risoluzione di casi concreti potrebbe richiedere lo sviluppo di soluzioni originali, perché non esiste ancora un metodo comprovato e maturo per l'acquisizione o analisi dei dati informatici in quel caso specifico.
In ogni caso, tutta l'attività di ricerca può sempre essere resa obsoleta dall'aggiornamento dei componenti oggetto di studio.

Quanto detto finora non significa che l'informatica forense sia un precario castello di carte, pronto a crollare in qualsiasi momento.
Piuttosto, ha varie implicazioni per come la ricerca della materia deve essere condotta, come i tecnici devono presentare le loro conclusioni, e come il giudice deve valutare la prova informatica.

## Fragilità dei dati informatici

La caratteristica più importante dei dati informatici è la loro malleabilità, intesa come la facilità con cui è possibile modificarli, accidentalmente o intenzionalmente.

Per quanto riguarda le modifiche accidentali, la conservazione e trasmissione dei dati richiede sempre una modifica della realtà materiale,^[La modifica può anche essere di breve durata, o riguardare un'area limitata, ma deve comunque essere misurabile. Se così non fosse, i dati digitali sarebbero completamente immateriali e immaginari. Ad esempio, le modalità di trasmissione senza fili (Bluetooth, Wi-Fi, ecc.) hanno un raggio utile limitato, al di fuori del quale la trasmissione diventa impossibile, ed i dati che vengono trasmessi smettono di esistere se la trasmissione viene interrotta. Ancora, i dati nella memoria RAM sono memorizzati, non trasmessi, ma si disperdono appena il sistema viene spento.] e pertanto, qualsiasi problema nella realtà materiale si riflette sui dati:

- Il deterioramento^[Inteso come il processo naturale, inevitabile ed irreversibile per cui tutta la materia tende progressivamente verso il disordine.] del supporto materiale comporta la graduale perdita di funzionalità del supporto;^[Nell'ipotesi migliore, il sistema rileva la presenza di settori corrotti che sono diventati illeggibili, lo comunica all'utente, ed in alcuni casi, cerca di ripristinare i dati. Ad esempio, se si hanno due dischi configurati in modo da usare lo schema di archiviazione RAID 1, entrambi i dischi contengono una copia identica dei dati. Se un settore è corrotto su un disco, è possibile recuperare i dati dall'altro disco. Nei casi più gravi, il sistema non si accorge che un settore è corrotto, e restituisce un dato errato senza informare l'utente. Nel caso peggiore, l'intero supporto non viene più riconosciuto dal sistema. A quel punto, è necessario utilizzare tecniche particolarmente invasive per cercare di recuperare i dati, che richiedono lo smontaggio irreversibile del supporto materiale, ed in ogni caso, pongono problemi dal punto di vista della loro affidabilità.]
- Il malfunzionamento^[Inteso come un fenomeno estremamente raro da un punto di vista statistico, per cui un supporto non deteriorato si comporta in maniera erronea.] può dipendere da cause "naturali"^[Come i *bit flip* (inversione di singoli bit) dovuta a raggi cosmici. V. T. Long, *This Week in Glean: What Flips Your Bit?*, 2022, <https://web.archive.org/web/20220413132337/https://blog.mozilla.org/data/2022/04/13/this-week-in-glean-what-flips-your-bit/>.] o cause "meccaniche".^[Come gli *unrecoverable read errors* (errori di lettura irrimediabili) che sono dovuti al fatto che il supporto materiale è pur sempre un oggetto imperfetto, che può occasionalmente compiere errori. V. T. Pott, I. Thomson, *Flash banishes the spectre of the unrecoverable data error*, 2015, <https://web.archive.org/web/20200707202632/https://www.theregister.com/2015/05/07/flash_banishes_the_spectre_of_the_unrecoverable_data_error/>.]

Per quanto riguarda le modifiche intenzionali, in linea teorica, se è possibile entrare in possesso del supporto, è anche possibile modificare i suoi contenuti:

- La distruzione integrale di tutti i dati mediante sovrascrittura è considerata irreversibile;^[V. @Feenberg2013. Tradizionalmente si raccomandava l'uso di numerosi passaggi (v. @Gutmann1996), ma successivamente è stato dimostrato che è sufficiente un singolo passaggio, che imposta tutti i bit a zero (v. @Wolbe2018_ZeroFilledHardDrive).]
- La modifica arbitraria di contenuti specifici del disco^[Ad esempio, eliminare solo alcuni file, o modificare i loro contenuti.] è più complessa, e può essere rilevata mediante l'uso di varie tecniche.^[La semplice eliminazione di un file non rimuove immediatamente i suoi contenuti, ma li segna solo come spazio libero. Usando software specializzati (ad esempio, *PhotoRec*), è possibile esaminare le aree del supporto segnate per ricercare file cancellati. Se il file è stato sovrascritto prima di essere eliminato (ad esempio, con GNU *shred*, v. @GNUCoreutilsManual, sez. 11.6), è possibile che una copia dei contenuti del file possa essere trovata altrove. Ad esempio, se il file è un'immagine o un video, il sistema operativo spesso produce una *thumbnail* (anteprima) dei contenuti di quel file. Sovrascrivere il file non elimina automaticamente anche l'anteprima, che è salvata in maniera indipendente rispetto al file. Per quanto riguarda la modifica dei file, è necessario verificare se il sistema operativo o altre applicazioni tengono traccia dell'integrità dei file o delle operazioni compiute mediante *checksum* o *log files*. In questi casi, è possibile confrontare se il file corrisponde o meno a quanto ci si aspetta sulla base di questi valori di riferimento.]

Per cercare di impedire questo tipo di modifiche, si possono usare delle misure di sicurezza, che possono essere ricondotte a due grandi famiglie:

- Le misure di sicurezza software^[Ad esempio, il software che normalmente richiede la password per accedere all'account di un utente, o impedisce che l'utente attualmente autenticato possa visualizzare o modificare file di altri utenti, o file gestiti dal sistema operativo.] sono efficaci solo quando il sistema è attivo,^[Se il sistema è spento, non sono in esecuzione. L'unica eccezione è la *encryption-at-rest* (crittografia a riposo), dove i dati rimangono criptati (e quindi illeggibili a chiunque non conosca la chiave per decrittarli) anche quando il sistema è spento.] e possono essere aggirate con relativa facilità.^[Spesso il software presenta degli errori di programmazione che possono essere oggetto di *exploit* (sfruttati) per aggirare le misure di sicurezza.]
- Le misure di sicurezza hardware^[Ad esempio, il supporto si rifiuta di funzionare a meno che non venga inserita una password mediante dei pulsanti fisici, un *USB dongle*, etc.] sono sempre attive, e se implementate correttamente, sono pressoché impossibili da aggirare;^[Ad esempio, i dispositivi prodotti dalla Apple negli ultimi anni includono varie misure di sicurezza a livello hardware, che rendono difficile manomettere il sistema operativo, o decrittare i dati dell'utente. V. @Apple2022_PlatformSecurity, p. 7.]

Un'altra caratteristica dei dati informatici è il fatto che le modifiche non lasciano tracce. Nel caso in cui le misure di sicurezza vengono aggirate, ed i dati informatici vengono modificati, è impossibile risalire con certezza al loro stato precedente, e tutte le ricostruzioni sono al più ipotesi.^[Nel mondo materiale, è praticamente impossibile agire senza lasciare una qualche minima traccia, ma nel mondo digitale, i singoli bit sono già l'unità di memoria minima. Ad esempio, sovrascrivere un singolo bit trasforma la sequenza di caratteri "1966" in "1946" [@Gammarota2016, p. 62], ed è praticamente impossibile trovare tracce di questo cambiamento. I bit adiacenti sono rimasti inalterati, e il bit che è stato sovrascritto non mantiene traccia del suo valore precedente. Se quella data non occorre altrove, la modifica non può essere rilevata, e anche se occorresse altrove, sorgerebbe il problema di spiegare le incongruenze e capire quale sia la data autentica.]

L'ultima caratteristica dei dati informatici è che possono essere facilmente duplicati un numero infinito di volte, senza *generational loss* (perdita di qualità fra copie successive).^[Ad esempio, si pensi a come le fotocopie di fotocopie hanno una qualità minore rispetto ad una fotocopia dell'originale. I dati informatici sono soltanto delle sequenze di valori binari, ed è estremamente semplice creare delle copie, e confrontarle. Se le sequenze di bit sono identiche, i dati informatici sono indistinguibili ed equivalenti, e non è possibile distinguere fra l'originale e la copia.]

Per facilitare la verifica dell'integrità della copia^[L'integrità va garantita rispetto all'originale subito dopo la creazione della copia, e va mantenuta nel corso del tempo.] è possibile calcolare l'*hash* crittografico dei dati.^[In inglese, *to hash* significa "sminuzzare". Un algoritmo di hash "sminuzza" un file, nel senso che il file viene diviso letto come una serie di *blocks* ("blocchi", tranche), che vengono progressivamente ricombinati fra di loro per generare un *digest* (riassunto) dei dati originali, che ha una lunghezza fissa e breve (128 bit per MD5, 160 bit per SHA-1). La prima proprietà degli hash è che gli stessi dati in entrata producono sempre lo stesso hash in uscita. Si può verificare che due sequenze di bit sono identiche calcolando e confrontando il loro hash. La seconda proprietà degli hash è che cambiare anche un singolo bit nei dati in entrata cambierà (in media) la metà dei bit in uscita. Pertanto, anche la minima differenza fra due sequenze di bit produrrà hash completamente diversi. È una buona pratica usare almeno due hash, in modo da avere più valori di riferimento per verificare l'integrità dei dati.]

La possibilità di creare e verificare le copie dei dati durante le indagini controbilancia in parte la loro fragilità prima dell'inizio delle indagini.

## Rigore scientifico nell'informatica forense

L'aggettivo "forense" nell'espressione "informatica forense" suggerisce l'affinità con le altre scienze forensi, che possono essere sia scienze naturali (ad esempio, la medicina legale e la tossicologia forense sono strettamente legate alla biologia, la balistica forense è legata alla fisica), o scienze sociali (ad esempio, la criminologia e la psicologia).

Si pone il problema di definire che tipo di scienza sia l'informatica. Da un lato, si può sicuramente escludere che sia una scienza sociale. Può essere usata dalle scienze sociali per analizzare grandi quantità di dati,[^analyics] ma interessa principalmente come strumento, non come scienza.

[^analyics]: Si pensi al settore della *data analytics*, che analizza enormi quantità di dati grezzi relativi ad utenti di siti internet per studiare, ed eventualmente manipolare, fenomeni sociali (ad esempio, a quali temi gli utenti sono interessati, e come incentivarli ad acquistare determinati prodotti), e la relativa regolazione da parte del diritto, che cerca di regolare l'utilizzazione dei dati personali resi disponibili dagli utenti su internet, con strumenti come la GDPR.

Da un altro, si può escludere anche che sia una scienza naturale. L'oggetto dello studio dell'informatica è l'elaborazione automatica delle informazioni,[^definizione-informatica] e non l'informazione come "fenomeno naturale".
La fisica cerca di elaborare modelli teorici che spiegano come sia possibile parlare di "informazione".
Ad esempio, si può dire che un libro stampato contenga informazioni perché gli atomi che lo compongono tendono a rimanere nella stessa posizione.
A loro volta, la posizione degli atomi all'interno della realtà materiale è una forma di informazione, perché è un dato percepibile e misurabile.

[^definizione-informatica]: \VediUrl{Treccani.it}{Informatica}{n.d.}{https://www.treccani.it/enciclopedia/informatica/}.

L'informatica, invece, è puramente teorica.
Il suo obiettivo non è tanto di spiegare "come" l'informazione esiste. Il "come" l'informazione esiste può condizionare lo sviluppo dell'informatica, specie quando si passa all'implementazione pratica delle costruzioni teoriche dell'informatica,[^macchina-di-turing] ma in ogni caso, il vero cuore della disciplina è "cosa" si può fare con l'informazione.

[^macchina-di-turing]: Ad esempio, la Macchina di Turing è un modello di calcolatore che memorizza i dati su un nastro di lunghezza infinita. I computer che utilizziamo ogni giorno sono una mera imitazione dell'ideale platonico della Macchina di Turing, perché dispongono di una quantità di memoria limitata.

Da questo punto di vista, l'informatica è analoga alla matematica, che normalmente non viene descritta come una "scienza" in senso proprio, termine normalmente riservato per le scienze naturali, ma come una "scienza" in senso lato, ossia un insieme di conoscenze organizzate.[@Bilaniuk1996]
La matematica è utile per la scienza, ma non è una scienza in sé.[^matematica-scienze-naturali]

[^matematica-scienze-naturali]: In ultima analisi, tutte le scienze naturali sono fondate sulla matematica. La sociologia si fonda sulla psicologia, che si fonda sulla biologia, che si fonda sulla chimica, che si fonda sulla fisica, che per ultima si fonda direttamente sulla matematica, che può essere definita la scienza più "pura", perché non studia né gli esseri umani, né la natura materiale, ma fenomeni completamente astratti. \VediUrl{R. Munroe}{Purity}{n.d.}{https://xkcd.com/435/}.

La matematica non si preoccupa di spiegare "come" esistano i concetti astratti di numeri, i punti, le rette&hellip;[^MatematicaScopertaInventata]
Piuttosto, dà per scontato che questi concetti esistano, seppur in maniera astratta, e mediante ragionamenti deduttivi, queste verità assiomatiche producono "teoremi".
Un teorema non è un'ipotesi che aspetta di essere confutata con osservazioni empiriche,[^congettura-di-goldbach] ma è una proposizione che aspetta di essere dimostrata con un ragionamento logico.[^teorema-di-euclide]
L'esempio meglio conosciuto delle potenzialità del ragionamento deduttivo sono gli *Elementi* di Euclide, dove partendo da un numero limitato di elementi, si costruisce una serie di derivazioni logiche che permettono di dimostrare sempre più risultati.

[^MatematicaScopertaInventata]: In verità, si può discutere da un punto di vista filosofico se la matematica sia "scoperta", come un qualsiasi altro fenomeno naturale, seppure estremamente astratto, e quindi se la realtà materiale ponga dei limiti invalicabili a quanto può essere scoperto nella matematica; oppure, se sia "inventata", e quindi qualsiasi assioma, per quanto a prima vista "innaturale", possa comunque essere studiato, anche solo a livello teorico.
[^congettura-di-goldbach]: Nella matematica l'equivalente delle "ipotesi" scientifiche sono le "congetture". Ad esempio, la congettura di Goldbach è formulata come "ogni numero pari maggiore di 2 può essere scritto come somma di due numeri primi, anche uguali". Basterebbe trovare un singolo numero non esprimibile come la somma di due numeri primi per confutare la congettura usando il metodo induttivo. 

[^teorema-di-euclide]: Ad esempio, il teorema di Euclide dimostra in maniera deduttiva che i numeri primi sono infiniti. Ottenere lo stesso risultato in maniera induttiva sarebbe impossibile, perché indipendentemente da quanto tempo sia trascorso dall'ultimo numero primo, non è possibile escludere a priori che fra gli infiniti numeri rimanenti non ci siano altri numeri primi.]

Allo stesso modo, l'informatica definisce una serie di concetti fondamentali. Ad esempio, definisce:

- Le unità di misura fondamentali. Il bit, il byte&hellip;
- Le operazioni che permettono di confrontare i dati. Gli operatori booleani *and* (e), *or* (o), *not* (non) &hellip;
- Astrazioni come le variabili (nome arbitrario, scelto dal programmatore, per riferirsi ai contenuti di un indirizzo di memoria), le *subroutine* o funzioni (sequenza di istruzioni che può prendere dei valori in input, e come output restituisce nuovi valori, o altera valori esistenti) &hellip;
- Operazioni che permettono di controllare il flusso del programma sulla base di determinate condizioni, come *if--then--else* (se--allora--altrimenti), i *while loops* (ripeti le operazioni finché) &hellip;
- Via via, concetti sempre più complessi, come la *OOP* (*object-oriented programming*, programmazione a oggetti), il *multithreading* e l'*asynchronous programming* (tecniche di esecuzione di funzioni in parallelo, per aumentare l'efficienza dei programmi) &hellip;

Ancora, laddove le scienze naturali producono teorie che cercano di spiegare un fenomeno, l'informatica produce algoritmi, sequenze di istruzioni che non hanno un contenuto definitorio o conoscitivo, ma solamente imperativo.
L'informatica può sicuramente essere usata per svolgere l'attività di ricerca nelle scienze naturali, ma ha sostanzialmente la stessa funzione della matematica: aiuta nella ricerca, formalizza i risultati, ma non è propriamente una "scienza".

Se l'informatica in sé potrebbe non essere considerata una "scienza naturale", ma piuttosto una branca della matematica, l'informatica forense, intesa come informatica applicata per risolvere questioni processuali, può sicuramente avere la natura di scienza naturale.

In primo luogo, i supporti materiali su cui i dati informatici sono memorizzati sono soggetti ai fenomeni naturali, che sono oggetto di studio delle scienze naturali.
Questo permette di determinare le migliori modalità di trattamento dei supporti materiali, nelle prime fasi del trattamento della prova informatica (identificazione, raccolta, trasporto e conservazione).

Anche il sistema operativo ed programmi possono essere considerati un "fenomeno naturale" perché la loro modalità di funzionamento non è immediatamente apparente, anche quando è possibile studiare direttamente il codice sorgente.

Se il software è proprietario, e non si ha accesso al codice sorgente, si possono usare le stesse tecniche usate dagli scienziati che studiano un fenomeno naturale:

- Si osserva il software ed si interagisce con esso (si forniscono determinati input, si svolgono certe azioni),
- Si documentano le operazioni svolte ed i risultati osservati.
- Si formulano delle ipotesi di leggi che descrivono il funzionamento del fenomeno ("data la sequenza di azioni *X*, il programma produce i cambiamenti *Y*"). La formulazione delle ipotesi è libera, e non segue schemi formali, ma è possibile formulare nuove ipotesi iterando su quelle già sviluppate [@Blachowicz2009, 321--323].
- Si sviluppa un esperimento che può essere riprodotto e ripetuto anche da altri scienziati.
- Si sottopongono le ipotesi a verificazione mediante l'esperimento, e si documentano i risultati. La fase di verificazione è particolarmente delicata. Il solo fatto che i risultati osservati confermano l'ipotesi oggetto di esame non è sufficiente a dimostrare che l'ipotesi sia valida,[^fallacia-affermare-conseguente] perché serve anche dimostrare che i risultati non siano dovuti a cause alternative [@Blachowicz2009, 325].
- Le ipotesi e l'esperimento vengono raffinati, in modo da cercare di creare un esperimento controllato, un esperimento dove l'unico elemento che cambia è la variabile che viene studiata. Nell'informatica, si parla di *minimum reproducible example* (minimo esempio riproducibile), il numero minimo di azioni necessarie per riprodurre un certo fenomeno.
- Eventualmente, si arriva alla creazione di una serie di massime di esperienza, di "leggi scientifiche" che sono state comprovate empiricamente, e formano una "teoria" sul funzionamento di quel programma.

Se il software è libero, ed è possible prendere visione del codice sorgente, e quindi sapere esattamente quali istruzioni sono eseguite dal programma, rimane comunque un margine di incertezza.
I software possono contenere *bug* (un errore di programmazione).
Leggendo il codice ci si aspetta il risultato *X*, ma eseguendolo si ottiene il risultato *Y*.

I bug vengono analizzati con tecniche di *debugging*, che sono pienamente ispirate al metodo scientifico.[^debugging]
L'obiettivo per l'informatica forense non è di risolvere il bug, ma di studiarlo come se fosse un fenomeno naturale, e capire in quali condizioni si verifica, e quali effetti produce, in modo da poter valutare il suo impatto sui dati.

[^fallacia-affermare-conseguente]: È la fallacia logica di affermare il conseguente: "Se *A*, *B*; *B*; pertanto, *A*", ma questo ignora il fatto che *B* potrebbe avere altre cause oltre che *A*. Per fare un esempio pratico: "Se nei programmi ci sono bug, si arresteranno in maniera inaspettata. Windows si è arrestato inaspettatamente, pertanto Windows deve avere un bug". Tuttavia, se Windows si arresta anche quando esegue istruzioni estremamente semplici, come impostare un valore a 0, si iniziano a sospettare altre cause per l'arresto inaspettato, tra cui l'instabilità dell'hardware dovuta ad *overclocking* (la sovralimentazione di un processore al fine di aumentare le prestazioni, al costo di sacrificare il suo corretto funzionamento). \VediUrl{R. Chen}{There's an awful lot of overclocking out there}{2005}{https://devblogs.microsoft.com/oldnewthing/20050412-47/?p=35923}.
[^debugging]: Un bug viene rilevato (osservazione), si documentano le azioni che lo causano (documentazione), si formula un ipotesi riguardo a quali istruzioni nel codice possano causare quel bug (formulazione di ipotesi), si apportano le modifiche necessarie al codice per vedere se il bug continua a presentarsi (verifica dell'ipotesi), e si continuano a formulare e verificare altre ipotesi fino a quando il bug viene corretto. È buona pratica documentare, dove possibile e ragionevole, la causa del bug, in modo da evitare una *regression* (situazione dove lo stesso bug che era stato già risolto si ripresenta nel futuro), ed evitare di commettere lo stesso errore in futuro in altre parti del codice.

In conclusione, anche se la sua natura astratta, deduttiva ed esatta rende l'informatica una disciplina affine alla matematica,[^numeri-causali] quando si passa al mondo pratico, e si devono analizzare dei dati digitali a fini processuali, l'informatica forense può essere considerata a pieno titolo una scienza naturale.
Le sue valutazioni, pur essendo ispirate da una "scienza esatta", non possono che essere espresse in termini di probabilità, data la presenza di margini di incertezza ineliminabili nell'oggetto della materia.

[^numeri-causali]: Basta pensare al fatto che i computer sono incapaci di generare valori casuali. Nell'informatica si parla di *PRNG* (*pseudo-random number generator*, generatore di numeri pseudo-casuali). Il *Mersenne Twister* è il PRNG di default nelle librerie di molti linguaggi di programmazione, e permette di ricombinare una sequenza di bit iniziale chiamata *seed* (seme) in modo da generare (metaforicamente, far germogliare il seme in) una nuova serie di bit, che ad un osservatore umano sembrano casuali. Tuttavia, se si ottiene un sufficiente numero di output, diventa possibile calcolare lo stato interno del PRNG, e quindi prevedere i valori che saranno generati nel futuro. Il nome "pseudo-causale" deriva dal fatto che i risultati sono potenzialmente prevedibili. Un *CSPRNG* (*cryptographically-secure PRNG*, PRNG ad uso crittografico) presentano maggiori garanzie di robustezza (si deve dimostrare che anche conoscendo gli output precedenti, il prossimo output sia statisticamente imprevedibile, e che in ogni caso, sia impossibile risalire al *seed*). Il miglior *seed* per un (CS)PRNG è un singolo valore "realmente casuale", che può essere ottenuto soltanto facendo riferimento ad un elemento che si trovi all'esterno (ad esempio, misurando la temperatura della stanza, il movimento del mouse dell'utente, ecc &hellip;).

## Analisi e valutazione della prova informatica {#analisi-valutazione-prova-informatica}

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
  - Il perito ha usato modalità di analisi originali, nuove, non sufficientemente condivise dalla comunità scientifica, inadeguate, che non rispettano i principi fondamentali dell'informatica forense&hellip; e pertanto, sono poco affidabili.
  - È possibile svolgere le stesse analisi con strumenti o tecniche diverse, giungere a risultati diversi, ed argomentare che la metodologia usata dal consulente è più affidabile di quella del perito.
  - Lo stato dei dati informatici può essere spiegato da altri fattori, che il perito non ha considerato, o a cui non ha dato sufficiente peso.

L'obiettivo del consulente tecnico del difensore non è necessariamente di provare un fatto nuovo o diverso, che contraddice la valutazione del perito.
È sufficiente ingenerare un "ragionevole dubbio" nel giudice per evitare una sentenza di condanna (art. 533 co. 1 c.p.p.).

È possibile delimitare l'attività dei consulenti prendendo come riferimento i reati contro l'amministrazione della giustizia.

La linea che divide il contributo del consulente dal favoreggiamento personale (art. 378 c.p.) è analoga a quella prevista per l'avvocato.
Le attività materiali che ostacolano le indagini (ad esempio, suggerire come distruggere le prove, o manomettere i dati digitali) integrano sicuramente il reato.
Le attività puramente intellettuali e tecniche, come suggerire indagini al perito, o contestare la sua ricostruzione, sono ammesse (e doverose) [@Canestrari2016, 252].

L'attività del consulente tecnico del difensore deve essere necessariamente favorevole all'assistito, e non può causare con dolo un danno, altrimenti integrerebbe il reato di consulenza infedele (art. 380 c.p.) [@Canestrari2016, 273].
Il problema è capire se favorire l'assistito significa anche poter mentire.

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
Il giudice deve tenere in conto le varie peculiarità della prova informatica.

In primo luogo, deve considerare la quantità e qualità dei dati che è stato possibile acquisire.
Ad esempio, l'acquisizione forense di un disco rigido di cui si ha la disponibilità materiale dà maggiori garanzie rispetto all'acquisizione di singoli file da un servizio di *cloud storage* (archiviazione sul *cloud*) come Dropbox.

In un caso, si acquisisce l'intero disco, ed è possibile rilevare anche i file cancellati, eventuali manipolazioni dei dati&hellip;
Nel secondo caso, si ottengono solo singoli file, senza il "contesto" informatico che permette di valutarli in maniera adeguata.
È possibile dimostrare che esistono, ma è molto più difficile cercare di ricostruire perché esistono.

Successivamente, deve valutare la ragionevolezza intrinseca e l'adeguatezza dei metodi di analisi che sono stati utilizzati, specie se è stato necessario svolgere delle analisi innovative. Ad esempio:

- La ricerca di file per hash è concettualmente semplice. Si estraggono tutti i file trovati nel disco, si calcola il loro hash (una sorta di "impronta digitale") del file, e si verifica se questo hash rientra in una lista di hash già conosciuti (ad esempio, una lista di hash di file pedopornografici, di virus per computer &hellip;). È una tecnica concettualmente semplice da spiegare, e di natura meccanica, che non prevede margini discrezionali di valutazione [@Ferrazzano2014, 153].
- Esistono varie tecniche per verificare se un'immagine digitale è stata manipolata, ma per valutare la loro corretta applicazione è necessario comprendere il funzionamento dei formati digitali, è più difficile applicare queste tecniche in maniera meccanica, e c'è un margine discrezionale relativo alla loro valutazione [@Battiato2014, 16--20; @Ferrazzano2014, 152--153].

Infine, deve dare il giusto peso anche alle altre prove, e non dare un peso indebito (per eccesso o difetto) alla prova informatica.
Ad esempio, se tutte le altre prove convergono verso una versione dei fatti, e la prova informatica è in disaccordo con le altre prove, sarebbe irragionevole fare leva sul carattere tecnico e scientifico di quest'ultima, a danno delle altre prove.

Nello stesso caso, sarebbe altrettanto irragionevole dare scarsa rilevanza alla prova informatica che è in disaccordo con le altre prove, per il solo fatto che il perito o i consulenti tecnici hanno dovuto usare strumenti di analisi innovativi.
L'informatica è in continua evoluzione, e per i settori più all'avanguardia non si sono ancora formate delle *best practices* (buone prassi, condivise dalla comunità scientifica).

In questi casi, il giudice deve valutare la ragionevolezza dell'argomentazione.
Più gli esperti si sforzano di dimostrare che l'attività svolta non è "pseudoscienza", completamente scollegata dai principi della materia, ma cerca di adattare le conoscenze e tecniche largamente condivise ai casi nuovi, e più il giudice deve considerare l'analisi come ragionevole.
Naturalmente, non è vincolato ai risultati, ma è tenuto a valutare con serietà la prova.

<!--
- programmi open-source disponibili per le operazioni di informatica forense
- risorse NIST: https://www.nist.gov/itl/ssd/software-quality-group/computer-forensics-tool-testing-program-cftt
TODO: metodo scientifico
-->
