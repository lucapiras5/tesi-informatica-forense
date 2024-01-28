# Sviluppo di software scientifico libero

## Introduzione

I capitoli precedenti hanno dimostrato come il software libero sia il modello migliore per soddisfare le esigenze dell'informatica forense. Questo capitolo spiega come viene sviluppato il software libero nella pratica. Il capitolo ha due obiettivi.

Il primo è fornire ai giuristi un'introduzione ai problemi tecnici e le buone pratiche che riguardano lo sviluppo del software. Così come è importante conoscere le problematiche fondamentali poste dall'uso dei dati digitali per garantire il loro corretto trattamento, è altrettanto necessario conoscere le problematiche relative allo sviluppo del software, per garantire un suo uso ed una sua valutazione consapevole.

Il secondo è di dimostrare che il software libero non è di qualità inferiore, e che il suo sviluppo non è caotico. Questi stereotipi negativi nascono dal fatto che il software libero di solito non è sviluppato da società specializzate e non è distribuito a pagamento, e che le libertà fondamentali che rendono il software libero permettono a tutti di modificare il software, e distribuire copie modificate.

## Bilanciamento fra software originale e software già esistente

Il primo passo per sviluppare del software è analizzare il problema da risolvere, e determinare una lista di obiettivi che il software deve raggiungere. Ad esempio, "essere in grado di aprire un'immagine del disco nel formato EWF", "essere in grado di catturare il traffico di rete"&hellip;

Determinati questi obiettivi, si deve valutare se sia effettivamente necessario sviluppare del software *ad-hoc*, oppure se sia possibile ed opportuno usare (ed eventualmente modificare) del software già sviluppato da altri. Nel prendere questa decisione, si deve evitare di cadere in due fallacie.

La prima è la *not invented here syndrome* (sindrome del "non inventato qui"), secondo cui è sempre meglio fare da sé, piuttosto che usare codice scritto da altri. Ad esempio, perché si sarà maggiormente familiari con il proprio codice, sarà più facile modificarlo a proprio piacimento, non ci si deve preoccupare dei *bug* presenti nel codice altrui&hellip;

La seconda è la nozione secondo cui per svolgere operazioni tecniche e scientifiche si possono esclusivamente usare programmi che sono stati espressamente dedicati all'analisi forense fin dalla loro creazione. Questa fallacia può essere considerata un corollario della prima, se si cerca di creare una nuova "versione forense" di un programma già esistente, invece di adattare il programma già esistente ai requisiti dell'informatica forense.

È possibile confutare entrambe queste nozioni.

Il vantaggio principale del codice scritto da altri è che è stato messo alla prova nella pratica, ed è stato soggetto ad un controllo di qualità diffuso. Quanti più utenti usano il software, ognuno con le proprie configurazioni di hardware e software, tanti più *bug* possono essere scoperti e corretti. Quanti più sviluppatori contribuiscono a sviluppare il software, tanto più il codice sarà riorganizzato in maniera che sia leggibile e facilmente comprensibile anche da qualcuno che non è familiare con quel codice.

Viceversa, lo svantaggio principale del codice nuovo scritto *ad hoc* è che non ha ricevuto la stessa attenzione dagli utilizzatori del software, e da altri programmatori:

- Funziona sul proprio sistema, ma potrebbe non funzionare su altri sistemi. Pertanto, non è riproducibile.
- La minore quantità di codice significa anche una minore quantità di *bug*, ma allo stesso tempo, significa anche che c'è meno codice che serve a prevenire o correggere i *bug*. Pertanto, non è affidabile.
- Un gruppo di sviluppatori ristretto e strettamente familiare con il codice avrà un incentivo minore a documentarlo ed riorganizzarlo, perché sanno già come funziona. Pertanto, è difficile da studiare e modificare.

Da un lato, è vero che l'informatica forense ha esigenze particolari e specializzate per quanto riguarda il funzionamento del software, che vanno oltre le aspettative per un programma non specializzato. Il software deve offrire garanzie di correttezza, ripetibilità, riproducibilità dell'analisi, e deve offrire la maggiore quantità possibile di informazioni utili durante il suo funzionamento.

Tuttavia, è anche vero che il funzionamento corretto e prevedibile, e la capacità di fornire informazioni diagnostiche sono caratteristiche utili anche per i programmi non specializzati per l'informatica forense. In ultima analisi, tutti i programmi hanno l'interesse a funzionare correttamente, l'unica differenza è che questo maggiore rigore è la priorità fondamentale dell'informatica forense.

Pertanto, si possono trarre due conclusioni. La prima è l'opportunità di cercare di riutilizzare e modificare il codice già esistente, quando possibile, in modo da elevarlo agli standard più stringenti dell'informatica forense. La seconda è che la distinzione fra software "forense" e "non-forense" deve essere valutata da un punto di vista sostanziale, non formale.

In altre parole, il software che afferma di essere specializzato per l'informatica forense potrebbe essere di scarsa qualità. In particolare, nel caso del software non-libero, potrebbe essere impossibile ispezionare il codice sorgente per verificare il buon funzionamento del programma. Viceversa, il software libero che non è nato per essere utilizzato per scopi forensi può essere modificato e adattato alle esigenze dell'informatica forense.

In ogni caso, quanto detto finora non significa che si deve sempre evitare di sviluppare codice originale, innovativo, ed *ad hoc*, ma solo che "reinventare la ruota" non dovrebbe essere la prima scelta,[^RiscrivereCodiceDaZero] ma dovrebbe essere considerata una scelta eccezionale, da prendere solo in situazioni eccezionali.[^DiscordGoRust] Ad esempio, perché non esistono altre soluzioni, o perché sarebbe più agevole iniziare da zero piuttosto che cercare di modificare le soluzioni già esistenti. Viceversa, se esistono soluzioni mature e largamente utilizzate, è necessario motivare perché non sia possibile utilizzarle.

[^RiscrivereCodiceDaZero]: Per una discussione sul perché riscrivere del codice partendo da zero è una cattiva idea, \VediUrl{J. Spolsky}{Things You Should Never Do, Part I}{2000}{https://web.archive.org/web/20170104073437/https://www.joelonsoftware.com/2000/04/06/things-you-should-never-do-part-i/}.
[^DiscordGoRust]: In alcuni casi può essere utile riscrivere del codice in un linguaggio di programmazione più performante. Ad esempio, \vediUrl{J. Howarth}{Why Discord is switching from Go to Rust}{2020}{https://web.archive.org/web/20210922120203/https://discord.com/blog/why-discord-is-switching-from-go-to-rust}. 

## Architettura del software

Si possono distinguere vari gradi di complessità del software. È bene indicare fin da subito che non tutto il software deve ambire a scalare i vari gradi, e aumentare la sua complessità. I gradi più bassi e meno complessi tendono a coincidere con del software che viene sviluppato per risolvere problemi altamente specifici, mentre i gradi più alti rappresentano software più generico, e adatto a risolvere intere categorie di problemi.

Può capitare che un software nato per risolvere un problema specifico, mediante la collaborazione altrui, cresca fino a diventare un software generico, ma questa evoluzione non è necessaria. La complessità non è una misura della qualità o utilità del software, ed è sempre preferibile ridurre la complessità di un sistema, piuttosto che aumentarla. La priorità principale è il corretto funzionamento del software, e più un sistema è complesso, e più diventa dispendioso garantire che tutti i componenti funzionano correttamente.

Il primo grado è il *glue code* ("codice-colla"), ossia, del codice che serve a collegare fra loro più programmi indipendenti. Il codice contenuto in questo tipo di programmi è generalmente breve e semplice. Il lavoro effettivo e complesso viene interamente delegato ad altri programmi, il *glue code* serve solo ad indicare la filiera che i dati devono seguire.

Il caso d'uso tipico è per automatizzare operazioni meccaniche, che devono essere ripetute più volte. Invece di scrivere manualmente tutti i comandi, è molto più semplice scrivere del codice che eseguirà i comandi necessari in sequenza.

Il secondo grado è il "software monolitico". In questo caso, non si scrive codice che collega vari programmi, ma si scrive un programma completo ed indipendente. L'aggettivo "monolitico" si riferisce al fatto che il codice responsabile per l'analisi e l'elaborazione dei dati, ed il codice responsabile per la presentazione dei dati non sono separati in maniera netta.

Il caso d'uso tipico è quando la logica per l'elaborazione dei dati è diventata troppo complessa per il *glue code*, che generalmente può compiere solo trasformazioni semplici, ma il programma è comunque abbastanza semplice, e compie una funzione, o poche funzioni, altamente specifiche.

Il terzo grado è il software abbinato ad una libreria. La differenza rispetto al grado precedente è che il codice viene diviso in due parti.

La prima parte è chiamata libreria, e contiene la parte di codice più generica ed astratta, che non risolve un problema specifico, ma offre tutti gli strumenti che possono essere utilizzati per la soluzione di problemi specifici. Si tratta del codice che acquisisce, analizza, e/o trasforma i dati. Il tratto caratteristico della libreria è che non può essere utilizzata direttamente, ma deve essere richiamata da un programma.

La seconda parte è il software che può essere direttamente eseguito. Questo codice ha la natura di *glue code*, ma invece di collegare vari programmi, collega le funzioni già definite nella libreria per risolvere un problema concreto, e presentare i dati in maniera utile.

Il caso d'uso tipico di questo modello è quando un programma inizialmente nato per risolvere un singolo problema nel tempo si è arricchito di funzionalità, è diventato sempre più complesso, e per ragioni di organizzazione del codice, è più semplice dividere le parti che elaborano i dati, specie se possono essere riutilizzate da altri programmi, dalle parti che presentano i dati.

La divisione fra programma e libreria presenta due vantaggi. Il primo è la possibilità di riutilizzare la libreria in altri programmi, in modo da beneficiare del lavoro già svolto da altri. Il secondo è la facilità con cui è possibile modificare le parti di codice che gestiscono il flusso dei dati fra i vari componenti della libreria, e la presentazione finale dei dati, in modo da poter adeguare il codice per risolvere un problema specifico.

L'ultimo grado di complessità è dato dal *framework* ("intelaiatura"). Un *framework* raccoglie più librerie, combina le loro funzionalità, e offre ai programmatori un'interfaccia unificata per utilizzarle. I *frameworks* possono essere visti come delle "grandi librerie", che offrono funzionalità astratte. Il compito di chi scrive il *framework* è di implementare correttamente le funzioni più complesse e delicate, in modo che chi lo utilizza per risolvere un problema concreto debba scrivere la minore quantità di codice possibile.

Data la loro complessità, esistono pochi *frameworks*. Questo è un vantaggio, perché gli sforzi della comunità di sviluppatori si può concentrare solo su uno (o pochi) progetti, e qualsiasi miglioramento al *framework* si riflette immediatamente su tutto il software che lo utilizza.

## Scelta di una licenza libera

Scegliere una licenza è fondamentale se si sta sviluppando del software originale. Anche nel caso in cui si voglia modificare del software già esistente, è opportuno considerare oltre ai vari fattori tecnici anche la licenza usata, e preferire le licenze che soddisfano in maniera più forte le esigenze del software scientifico.

La Free Software Foundation offre alcune indicazioni per scegliere una licenza [@FSF-How-to-choose-a-license].

Per programmi particolarmente semplici che servono a risolvere un problema specifico, è possibile usare una licenza non-*copyleft* (che non impone la ridistribuzione del codice sorgente a seguito di modifiche), come la Licenza Apache 2.0.[^LicenzaApache2.0]

[^LicenzaApache2.0]: \VediUrl{Apache Software Foundation}{ Apache License, Version 2.0}{2004}{https://web.archive.org/web/20040202124049/http://www.apache.org:80/licenses/LICENSE-2.0}.

In generale, è preferibile usare la licenza GPL, indicando la versione scelta, e aggiungendo "e versioni successive", in modo che il software sia sempre compatibile anche con le eventuali versioni successive della GPL [Per una spiegazione sul perché è importante specificare "e versioni successive", v. @Stallman-Identify-licenses-clearly].

Come anticipato nel capitolo precedente, la licenza ideale per lo sviluppo del software scientifico è la GNU GPL, per due motivi:

- La GPL impone la distribuzione del codice sorgente. Senza il codice sorgente, è impossibile continuare a sviluppare il programma, o studiare il suo esatto funzionamento.
- La GPL impone che se del codice entra a "stretto contatto" con del codice GPL,[^GPLStrettoContatto] allora quel codice deve usare a sua volta la licenza GPL. Questa condizione rende la GPL una clausola "infettiva", che obbliga quanto più software possibile ad essere rilasciato con la licenza GPL. 

[^GPLStrettoContatto]: Come visto nel caso della libreria *readline*, se si ha un software che usa codice GPL, e questo software non potrebbe essere compilato o utilizzato in maniera indipendente, se non ci fosse il codice GPL, allora si ha una situazione di "stretto contatto".

Per le librerie (e conseguentemente, anche i *framework*, dato che hanno sostanzialmente la stessa funzione), è necessario distinguere fra due casi.

Se la libreria ha una funzione particolare, specifica, ed unica, e non esistono altre librerie, e pertanto, se gli sviluppatori sarebbero obbligati ad usare questa libreria, è opportuno usare la licenza GPL. In questo modo, fino alla creazione di alternative, il monopolio della GPL porterà altri programmi ad adottare la GPL a loro volta, per poter beneficiare della libreria [@FSF-Why-not-LGPL].

Altrimenti, se esistono già altre librerie che svolgono funzioni simili, rilasciare una libreria con la licenza GPL sarebbe controproducente. Se gli sviluppatori non sono già propensi ad usare la licenza GPL per il loro software, adotteranno le altre librerie. In questo caso, è possibile usare la licenza LGPL[^LGPLTesto] (*Lesser GPL*, "GPL minore"), che non include la clausola *copyleft*, per cui il software deve adottare la licenza GPL.

[^LGPLTesto]: \VediUrl{Free Software Foundation}{GNU Lesser General Public License}{2007}{https://web.archive.org/web/20070701212426/http://www.gnu.org/licenses/lgpl-3.0.html}.

## Scelta del linguaggio di programmazione

Esistono numerosi linguaggi di programmazione, ognuno con caratteristiche tecniche e "sociali" diverse. L'obiettivo è di evidenziare la rilevanza di queste caratteristiche ai fini dello sviluppo del software scientifico, e quindi di creare delle linee-guida per scegliere il linguaggio di programmazione (nei nuovi progetti), o di offrire un ulteriore parametro per il momento della valutazione del software usato.

È bene precisare subito che l'intenzione non è di creare una graduatoria dei linguaggi di programmazione. Sarebbe assolutamente irragionevole fare delle valutazioni come "il software A è migliore del software B, perché usa un linguaggio di programmazione più semplice, più moderno, di più alto livello&hellip;[^PozzoDelSuccesso] e pertanto, e più facile scrivere del software di precisione scientifica con quel linguaggio."

[^PozzoDelSuccesso]: L'espressione "pozzo del successo" indica uno strumento (linguaggio di programmazione, interfaccia, sistema&hellip;) che rende facile fare le cose giuste, e difficile fare le cose sbagliate. \VediUrl{J. Atwood}{Falling Into The Pit of Success}{2007}{https://web.archive.org/web/20140402064217/https://blog.codinghorror.com/falling-into-the-pit-of-success/}.

Con le dovute accortezze, è possibile scrivere del codice chiaro, comprensibile, che funziona correttamente in un linguaggio "complesso" o "difficile" da usare [Ad esempio, per delle linee-guida generali su come scrivere del codice che sarà utilizzato in applicazioni critiche, come i sistemi aerospaziali, v. @Holzmann2006]. Viceversa, è sempre possibile scrivere del codice difficile da comprendere, e quindi, difficile da studiare e modificare in un linguaggio "semplice". Pertanto, la valutazione del linguaggio di programmazione non deve riguardare il linguaggio in sé, ma come il linguaggio è stato utilizzato. In particolare, se un certo linguaggio presenta delle caratteristiche che possono influire negativamente sul funzionamento corretto ed affidabile del software, si deve controllare se e quali rimedi sono stati adottati per mitigarle.

### Fattori tecnici

Il primo aspetto da considerare è se il linguaggio di programmazione è *memory-unsafe* o *memory-safe* (insicuro o sicuro per la memoria), ossia, se dà al programmatore il potere, dovere e la responsabilità di gestire manualmente e correttamente la memoria, oppure se la gestione della memoria è completamente automatica.

La gestione manuale della memoria nei linguaggi *memory-unsafe* è alla base della grande maggioranza dei *bug* nel software[^BugGestioneManualeMemoria] perché costringe il programmatore a tenere traccia di tutte le operazioni che riguardano la memoria, e controllare che ogni operazione non vada accidentalmente a sovrascrivere altre zone di memoria (*buffer overflow*), e vada a corrompere la memoria.[^DefinizioneBufferOverflow]

[^BugGestioneManualeMemoria]: V. A. Gaynor, *Introduction to Memory Unsafety for VPs of Engineering*, 2019, <https://web.archive.org/web/20190812151808/https://alexgaynor.net/2019/aug/12/introduction-to-memory-unsafety-for-vps-of-engineering/>, e P. Kehrer, *Memory Unsafety in Apple's Operating Systems*, 2019, <https://web.archive.org/web/20190725163137/https://langui.sh/2019/07/23/apple-memory-safety/>. 
[^DefinizioneBufferOverflow]: V. OWASP Foundation, *Buffer Overflow*, 2022, <https://web.archive.org/web/20220521104033/https://owasp.org/www-community/vulnerabilities/Buffer_Overflow>.

Viceversa, un linguaggio *memory-safe* prevede dei meccanismi che gestiscono in automatico la memoria, e rendono impossibile incorrere nei bug tipici dei linguaggi *memory-unsafe*. L'unico svantaggio è che il programma avrà una riduzione delle prestazioni, a causa dei controlli che devono essere eseguiti con ogni operazione che riguarda la memoria [@Pasini2019, 21].

Per quanto riguarda il software ad uso scientifico:

- È generalmente preferibile usare un linguaggio *memory-safe*, in modo da evitare alla radice tutti i *bug* relativi alla memoria.
- All'interno di un programma scritto in un linguaggio *memory-safe*, è possibile utilizzare del codice scritto in linguaggi *memory-unsafe* (tipicamente C e C++),[^PythonCFFI] purché quel codice sia robusto, maturo, largamente usato, sia stato sottoposto a strumenti di analisi come Electric Fence[^ElectricFence] e Valgrind&hellip;[^ValgrindMemcheck]
- È sconsigliato scrivere l'intero programma in un linguaggio *memory-unsafe*, o di riscrivere il codice *memory-unsafe* nel linguaggio *memory-safe*, perché queste operazioni rischiano di introdurre bug. 

[^PythonCFFI]: Ad esempio, Python (*memory-safe*) può usare la libreria CFFI per utilizzare del codice scritto nel linguaggio di programmazione C (*memory-unsafe*). V. A. Rigo, M. Fijalkowski, *CFFI documentation*, sez. *Overview*, 2018, <https://web.archive.org/web/20210918004604/https://cffi.readthedocs.io/en/stable/overview.html>.
[^ElectricFence]: V. B. Perens, *efence(3) - Linux man page*, sez. *Description*, 1999, <https://web.archive.org/web/20070806045202/https://linux.die.net/man/3/efence>.
[^ValgrindMemcheck]: V. Sviluppatori di Valgrind, *Valgrind User Manual*, sez. *Memcheck: a memory error detector*, 2023, <https://web.archive.org/web/20231113151236/http://valgrind.org/docs/manual/mc-manual.html>.

Un altro aspetto da considerare è il *type system* (sistema dei tipi) supportato dal linguaggio. Per il software scientifico, è preferibile usare un linguaggio che sia *statically-typed* e *strongly-typed*, ossia, chieda al programmatore di indicare espressamente, all'interno del codice, sia che tipo di valori possono essere usati all'interno del programma, e sia come i valori devono essere trasformati.[^DefinizioneTipi]

[^DefinizioneTipi]: Per una definizione dei termini usati, v. T. Hurd, *Introduction to Static, Dynamic, Strong and Weak Data Types*, 2021, <https://web.archive.org/web/20210603180908/https://www.sitepoint.com/typing-versus-dynamic-typing/>.

Indicare espressamente i tipi significa che se un programmatore usa accidentalmente un valore di tipo sbagliato all'intero del programma, questo problema potrà essere rilevato automaticamente, prima ancora che il programma si avvii [V. la sez. "Typing" in @Ousterhout1998, 24].

Infine, l'ultimo aspetto da considerare è come il linguaggio di programmazione gestisce gli errori che si verificano durante l'esecuzione del programma.

Il modo più semplice di segnalare che un'operazione non è andata a buon fine è usare un *in-band error*. La funzione restituisce un singolo valore, che può essere un valore normale, oppure un valore speciale, diverso dai valori "validi", che indica la presenza di un errore.[^DefinizioneInBandError] Lo svantaggio principale di questo approccio è che indica solo "se" un errore è avvenuto, ma non "perché", e quindi non permette di offrire all'utente informazioni diagnostiche specifiche.

[^DefinizioneInBandError]: V. F. Long, W. Snavely, *ERR52-J. Avoid in-band error indicators*, 2017, <https://web.archive.org/web/20230329034143/https://wiki.sei.cmu.edu/confluence/display/java/ERR52-J.+Avoid+in-band+error+indicators>.

Ad esempio, in C, *NULL* è il tipico valore speciale per indicare che un'operazione non è andata a buon termine:

```c
FILE *fp = fopen("file-da-aprire", "r");
if (fp == NULL) {
    // Non è stato possibile aprire il file.
    // È necessario gestire l'errore.
}
// "fp" si riferisce al file.
```

Un approccio migliore rispetto agli *in-band error* è restituire un *out-of-band error* trattando l'errore come un qualsiasi valore. La funzione restituisce sempre almeno due valori: 

- Il primo è vuoto in caso di errore, o contiene il valore richiesto se l'operazione è andata a buon fine.
- Viceversa, il secondo è vuoto se non si sono verificati errori, o contiene informazioni utili in caso di errore.

Il vantaggio di questo approccio è che permette di fornire più informazioni riguardo l'errore, ed è possibile usare strumenti di analisi per verificare che tutti i possibili errori vengono gestiti.[^Errcheck] Questo è l'approccio usato dal linguaggio Go:[^GestioneErroriGo]

[^Errcheck]: Ad es., v. K. Kisiel, *Errcheck*, 2023, <https://github.com/kisielk/errcheck/tree/7f94c385d0116ccc421fbb4709e4a484d98325ee>.
[^GestioneErroriGo]: V. A. Gerrand, *Error Handling and Go*, 2011, <https://web.archive.org/web/20210823191611/https://go.dev/blog/error-handling-and-go>.


```go
f, err := os.Open("file-da-aprire")
if err != nil {
    // L'errore non è vuoto, è necessario gestirlo.
    // log.Fatal(err):
    //   - Mostra la descrizione dell'errore "err";
    //   - Interrompe l'esecuzione.
    log.Fatal(err)
}
// "f" si riferisce al file.
```

Un altro approccio è usare un meccanismo chiamato "eccezioni". In questo caso, le funzioni non restituiscono un valore-errore, ma piuttosto, "sollevano un'eccezione". Quando viene sollevata un'eccezione, l'esecuzione del programma viene interrotta. Se esiste del codice che gestisce quell'eccezione, l'esecuzione riprenderà da quel punto, ma se l'eccezione non viene gestita, il programma arresta la sua esecuzione. Questo è l'approccio usato da Python:[^PythonEccezioni]

```python
try:
    fp = open("file-da-aprire")
    # Se il file non è trovato:
    # - L'esecuzione salterà a "except ..."
    # - Le righe sottostanti non saranno eseguite
    contents = fp.read()
except FileNotFoundError:
    # File non trovato, è necessario gestire l'errore.
```
## Documentazione del codice

Per il software ad uso scientifico, è estremamente importante documentare il codice. La documentazione del codice è analoga all'interpretazione autentica delle norme giuridiche, e consiste in spiegazioni scritte dagli stessi autori del codice riguardo a:

- "Cosa" (che tipo di dati) il codice si aspetta di ricevere in *input*, o produce in *output*.
- "Come" il codice opera su questi dati.
- "Perché" il codice è strutturato in una certa maniera.

Così come si parla di *bug* per il software, si parla di *bug* anche per la documentazione, quando [V. sez. "Reporting Bugs" in @GNU-C-Library, 1121]:

- Le spiegazioni relative al funzionamento del codice o programma non sono sufficientemente chiare o dettagliate, e quindi è difficile capire se il programma risponde alle proprie esigenze, o se si sta usando il programma correttamente.
- Il codice si comporta in maniera diversa da quanto indicato dalla documentazione, e quindi è difficile determinare se il programma produce risultati incorretti, oppure la documentazione è incorretta.

Nel caso del software libero, è importante che anche la relativa documentazione sia a sua volta libera. I criteri per determinare se la documentazione è libera sono la possibilità di ridistribuire copie della documentazione insieme alle copie del codice, e la possibilità di modificare la documentazione, in modo che rifletta le modifiche apportate al software libero [@GNU-C-Library, 1149].

È possibile distinguere vari tipi di documentazione.

Il livello più concreto sono i commenti a fianco del codice.[^MiglioriPraticheCommenti]
Idealmente, il codice dovrebbe essere auto-esplicativo: il flusso del programma, gli effetti prodotti dal codice, e l'intento del programmatore dovrebbero essere evidenti a prima vista.[^WriteCodeForHumans]
I commenti devono essere usati solo per spiegare il codice il cui scopo non è evidente a prima vista,[^ChestertonsFence] o che non è possibile riscrivere in maniera più semplice.[^PSDIsNotAGoodFormat]

Viceversa, i commenti non possono essere usati per giustificare del codice complesso, che invece potrebbe esser riscritto in maniera più chiara. Più il codice è complesso e difficile da capire, più è probabile che contenga *bug*, e più diventa difficile correggerlo.[^LeggeDiKernighan]

Per quanto riguarda il codice ad uso scientifico, la presenza di commenti utili è un fattore positivo, mentre la totale assenza di commenti, oppure la presenza di commenti che fanno sospettare che il codice sia di scarsa qualità è un fattore negativo.

[^ChestertonsFence]: L'espressione *Chesterton's fence* (recinzione di Chesterton) si riferisce all'idea che prima di rimuovere una recinzione apparentemente inutile, è meglio pensare al motivo per cui è stata costruita nel passato, e cosa succederebbe se venisse tolta. V. J. Turner, *Chesteron's Fence*, <https://web.archive.org/web/20220214094128/https://thoughtbot.com/blog/chestertons-fence>.
[^MiglioriPraticheCommenti]: Per una lista di buone pratiche relative ai commenti, v. E. Spertus, *Best practices for writing code comments*, 2021, <https://web.archive.org/web/20211223145454/https://stackoverflow.blog/2021/12/23/best-practices-for-writing-code-comments/>.
[^PSDIsNotAGoodFormat]: Ad esempio, un formato potrebbe essere particolarmente complesso, e quindi richiedere una notevole quantità di codice per essere interpretato correttamente. Per un esempio, v. N. Muller, *XeePhotoshopLoader.m*, 2013, <https://github.com/zepouet/Xee-xCode-4.5/blob/83394493f51991748b9b4706e6d37a8ed874bc05/XeePhotoshopLoader.m>, linee 108 ss.
[^WriteCodeForHumans]: Quando si scrive del codice, è più importante scrivere codice che sia facile da leggere per un programmatore umano, che veloce da eseguire per una macchina (ma difficile da capire per un umano). V. D. Orr, *Write code for humans. Design data for machines.*, 2020, <https://web.archive.org/web/20200402061509/https://douglasorr.github.io/2020-03-data-for-machines/article.html>.
[^LeggeDiKernighan]: La legge di Kernighan recita "*Debugging is twice as hard as writing the code in the first place. Therefore, if you write the code as cleverly as possible, you are, by definition, not smart enough to debug it.*" (Correggere del codice è due volte più difficile che scriverlo. Pertanto, se scrivi del codice nella maniera più ingegnosa possibile, sei, per definizione, non abbastanza ingegnoso per correggerlo).

Il livello immediatamente successivo ai commenti nel codice è la documentazione dei singoli componenti del programma.[^DocumentazioneComponenti]

[^DocumentazioneComponenti]: Ad esempio, le strutture di dati usate dal programma (e che tipi di valori contengono), le funzioni di cui è composto il programma, i nomi e tipi dei parametri che le funzioni accettano, all'interno di quali file questi componenti si trovano&hellip;

Si tratta ancora di una documentazione più "concreta" che "astratta", perché strettamente legata alla struttura del codice.
Questo tipo di documentazione può essere generato in maniera automatica sulla base del codice sorgente, utilizzando software specializzato.[^GenerazioneDocumentazione]

[^GenerazioneDocumentazione]: Ad esempio, per Python esiste Sphinx (<https://www.sphinx-doc.org/>), per C++ esiste Doxygen (<https://www.doxygen.nl/>)&hellip;

Il livello di astrazione successivo è il *reference manual* (manuale di riferimento). Consiste in una guida altamente tecnica e dettagliata, che ha comunque per oggetto i vari componenti del programma, ma redatta a mano, come una serie di documenti autonomi rispetto al codice. Pertanto, può seguire l'ordine espositivo ritenuto più utile dai programmatori, e può contenere anche elementi grafici come tabelle e diagrammi [Un esempio di *reference manual* è il manuale per la libreria C sviluppata da GNU, in cui si indica in dettaglio gli standard che vengono implementati, e le eventuali differenze rispetto agli standard. V. @GNU-C-Library].

Il *reference manual* può essere accompagnato da una *design overview*, documenti tecnici che offrono uno sguardo d'insieme riguardo come il software è strutturato, e che motivano le scelte che sono state fatte durante lo sviluppo.[^DocumentazioneSQLite]

[^DocumentazioneSQLite]: Ad esempio, la documentazione di SQLite (<https://www.sqlite.org/docs.html>) contiene sia un *reference manual* con diagrammi che spiegano la sintassi del linguaggio SQL, sia numerosi documenti che spiegano come varie funzionalità sono implementate in concreto, e quali considerazioni tecniche hanno portato a quelle scelte.

I tipi di documentazione menzionati fino ad ora interessano principalmente agli sviluppatori, o ai tecnici che sono chiamati a valutare l'affidabilità del programma ad uso scientifico.

L'utente finale è principalmente interessato ad un altro tipo di documentazione, di natura più pratica che teorica:

- Le istruzioni su come installare, ed eventualmente compilare, il software.
- Lo *user's manual* (manuale per l'utente) che spiega come utilizzare il software in concreto, e le limitazioni tecniche del programma.
- I *known bugs*, un elenco di *bug* di cui gli sviluppatori sono a conoscenza, ma non hanno ancora risolto.
- Il *changelog* (lista dei cambiamenti) o il file *NEWS* sono file che contengono una descrizione dei cambiamenti fra le varie versioni del programma. Per il software scientifico, è importante indicare tutti i cambiamenti che possono influire in maniera significativa sui risultati.^[Ad esempio, la risoluzione di un bug, o il cambiamento o eliminazione di un metodo di analisi&hellip;]
- *Tutorial* e guide, che spiegano in maniera dettagliata come raggiungere un determinato risultato.

Per il software scientifico, la finalità di questi documenti è di garantire che l'utilizzatore finale sia in grado di installare ed utilizzare il programma correttamente, e sia reso consapevole di eventuali *bug* e limitazioni già note agli sviluppatori.

In particolare, è preferibile seguire uno stile discorsivo, ed evitare ad ogni costo lo stile lapidario tipico delle *manpages* (pagine di manuale), una forma tradizionale di documentazione del software. Le *manpages* seguono lo stile delle *reference guides*, indicando tutte le opzioni che un programma può utilizzare in ordine alfabetico, non secondo un ordine pedagogico, e presuppongono che l'utilizzatore sappia già come usare il programma [V. sezz. "For Programmers, Not Users" e "The Source Code Is the Documentation" in @Garfinkel1994, 53--55]. Questo tipo di presunzione è inaccettabile per il software ad uso scientifico.

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

## Analisi del codice

### Linting

- Linters

### Testing

- funzioni testabili
- evitare regressioni
- integration testing

### Fuzzing

- garantire che il programma funziona in maniera prevedibile anche con input corrotti
- evitare situazioni in cui il software 

## Build riproducibili
## Sostenibilità economica del software libero

- Privati che distribuiscono codice libero, o che rendono parte del loro codice libero
- Sostenibilità economica
