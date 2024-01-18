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

[^PythonEccezioni]: V. Python Software Foundation, *The Python Tutorial*, sez. *Errors and Exceptions*, 2024, <https://docs.python.org/3.12/tutorial/errors.html>.

Il vantaggio è che in caso di errori non gestiti, il programma si arresta automaticamente, invece di continuare l'esecuzione con valori invalidi. Questo non avviene se gli errori sono trattati come semplici valori, come nelle modalità precedenti. Lo svantaggio è che è difficile sapere *a priori* se (e quali) eccezioni possono essere sollevate, ed è necessario consultare la documentazione o il codice sorgente.

Per quanto riguarda il software scientifico, si possono svolgere le seguenti osservazioni:

- La gestione degli errori *out-of-band* è generalmente preferibile, perché è più esplicita. Dato che le funzioni restituiscono sempre un valore-errore, il programmatore è automaticamente invogliato a gestire la presenza di quell'errore.
- Nei linguaggi che usano le eccezioni, è importante documentare tutte le eccezioni che possono essere sollevate, data la loro natura "implicita".
- È preferibile evitare gli errori *in-band*, ma se è assolutamente necessario usarli, è importante documentare i valori eccezionali che rappresentano errori.

### Fattori sociali

Per fattori sociali si intendono fattori che possono influire positivamente o negativamente sullo sviluppo del software scientifico, ma che non riguardano le caratteristiche tecniche del linguaggio in sé, quanto piuttosto come il linguaggio viene utilizzato.

Il primo fattore favorevole è la popolarità del linguaggio. Più un linguaggio è largamente utilizzato, e più è facile trovare risorse tecniche, codice da riutilizzare, programmatori che possono aiutare a migliorare il codice. Ad esempio, i linguaggi C e C++ sono rischiosi da utilizzare nel software scientifico perché *memory-unsafe*, ma allo stesso tempo, hanno larghissima utilizzazione nel mondo della programmazione, e quindi esiste un grande numero di risorse e strumenti che aiutano a sviluppare applicazioni robuste ed affidabili.

Il secondo fattore è l'età del linguaggio. È preferibile evitare linguaggi nuovi, sperimentali, o che cambiano di frequente, e concentrarsi su linguaggi che esistono da tempo, maturi e stabili. Ad esempio, C/C++, Java e Python sono stati creati decenni fa, sono largamente usati dall'industria, e quindi, è presumibile che continueranno ad essere supportati ed utilizzati nel tempo, senza cambiamenti significativi. Il linguaggio Go è più recente, ma gli sviluppatori hanno promesso che si impegneranno a garantire la retro-compatibilità delle versioni successive del linguaggio con le versioni precedenti.[^GoCompatibilità]

[^GoCompatibilità]: V. R. Cox, *Backward Compatibility, Go 1.21, and Go 2*, 2023, <https://web.archive.org/web/20230814162240/https://go.dev/blog/compat>.

Un altro fattore da considerare è la filosofia che ispira il linguaggio, o che viene incoraggiata dai programmatori. Ad esempio, uno dei principi di Python è: "*There should be one-- and preferably only one --obvious way to do it.*" ("Ci dovrebbe essere un -- e preferibilmente, solo uno -- modo ovvio di fare le cose.")[^ZenOfPython] Viceversa, il motto del linguaggio Perl è "*There's more than one way to do it.*" ("C'è più di un modo per farlo.") L'esistenza di più modi per raggiungere lo stesso risultato contrasta con le esigenze di rigore del software scientifico, e complica lo sviluppo del software.

[^ZenOfPython]: V. T. Peters, *PEP 20 -- The Zen of Python*, 2004, <https://web.archive.org/web/20220309222224/https://peps.python.org/pep-0020/>.

## Sistemi di controllo di versione

- distribuzione del codice
- controllo di integrità
- estrazione di versioni particolari
- possibilità di sperimentare con più funzionalità

## Documentazione del codice

- diataxis.fr
- non serve sapere come funziona un computer per poterlo utilizzare, ma cfr. Unix, con pagine del manuale scritte come bug report, UNIX haters handbook, 53 ss., "collect bug reports"), mancata documentazione del codice per proteggere i segreti industriali?

### README

- Equivalente ad un abstract

### Commenti

- Spiegano perché quel codice esiste, non cosa fa
- Se spiegano cosa fa

### Manuale di riferimento

- approccio teorico, spiega il perché
- utile per i programmatori, indica a cosa serve ogni componente

#### Architettura in generale

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
