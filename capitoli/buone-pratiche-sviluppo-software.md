# Sviluppo di software scientifico libero

## Introduzione

I capitoli precedenti hanno dimostrato come il software libero sia il modello migliore per soddisfare le esigenze dell'informatica forense. Questo capitolo spiega come viene sviluppato il software libero nella pratica. Il capitolo ha due obiettivi.

Il primo è fornire ai giuristi un'introduzione ai problemi tecnici e le buone pratiche che riguardano lo sviluppo del software. Così come è importante conoscere le problematiche fondamentali poste dall'uso dei dati digitali per garantire il loro corretto trattamento, è altrettanto necessario conoscere le problematiche relative allo sviluppo del software, per garantire un suo uso ed una sua valutazione consapevole.

Il secondo è di dimostrare che il software libero non è di qualità inferiore, e che il suo sviluppo non è caotico. Questi stereotipi negativi nascono dal fatto che il software libero di solito non è sviluppato da società specializzate e non è distribuito a pagamento, e che le libertà fondamentali che rendono il software libero permettono a tutti di modificare il software, e distribuire copie modificate.

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

Esistono numerosi linguaggi di programmazione, ognuno con caratteristiche diverse. L'obiettivo è di evidenziare la rilevanza di queste caratteristiche ai fini dello sviluppo del software scientifico, ma non con l'intenzione non è di creare una sorta di "graduatoria" dei linguaggi di programmazione.

È sempre possibile scrivere del codice difficile da comprendere (e quindi, difficile da studiare e modificare) in un linguaggio "semplice",[^PozzoDelSuccesso] e con le dovute accortezze, è possibile scrivere del codice comprensibile e che funziona correttamente in un linguaggio "complesso" o "difficile" da usare [Ad esempio, per delle linee-guida estremamente generali su come scrivere del codice che sarà utilizzato in applicazioni critiche, come i sistemi aerospaziali, v. @Holzmann2006].

[^PozzoDelSuccesso]: Idealmente, i linguaggi di programmazione dovrebbero tendere verso il "pozzo del successo", ossia, dovrebbero rendere facile seguire le *best practices*, ma soprattutto, dovrebbero rendere difficile non seguirle. V. J. Atwood, *Falling Into The Pit of Success*, 2007, <https://web.archive.org/web/20140402064217/https://blog.codinghorror.com/falling-into-the-pit-of-success/>.

Sarebbe assolutamente irragionevole penalizzare software scritto in determinati linguaggi, per il solo fatto che in astratto, quei linguaggi presentano delle caratteristiche sfavorevoli allo sviluppo di software scientifico. Quello che importa è come il software è stato sviluppato in concreto, e quali misure sono state prese per rimediare alle caratteristiche sfavorevoli.

Segue una lista di caratteristiche utili per lo sviluppo di software scientifico, perché sono utili, e come è possibile approssimarle nel caso in cui non siano disponibili nel linguaggio in cui il software è sviluppato.

- *Memory-safety* (sicurezza della memoria): è preferibile usare linguaggi *memory-safe* (sicuri per la memoria), dove la gestione della memoria è completamente automatica, e non richiede l'intervento manuale del programmatore [@Pasini2019, 21].
  - La gestione manuale della memoria nei linguaggi *memory-unsafe* è alla base della grande maggioranza dei *bug* nel software[^BugGestioneManualeMemoria] perché costringe il programmatore a tenere traccia di tutte le operazioni che riguardano la memoria, e controllare che ogni operazione non vada accidentalmente a sovrascrivere altre zone di memoria (*buffer overflow*), e vada a corrompere la memoria.[^DefinizioneBufferOverflow]
  - Se la natura delle operazioni da svolgere rende assolutamente necessario usare un linguaggio *memory-unsafe*, è fondamentale controllare l'assenza di bug relativi alla memoria con strumenti di analisi come Electric Fence[^ElectricFence] e Valgrind.[^ValgrindMemcheck] Il resto dell'applicazione può essere sviluppata in un linguaggio *memory-safe*, che utilizzerà il codice *memory-unsafe* quando necessario.[^PythonCFFI]
- *Type system* (sistema dei tipi): è preferibile usare linguaggi che siano *statically-typed* e *strongly-typed*,[^DefinizioneTipi] ossia, il programmatore deve indicare esplicitamente il tipo di valori che possono essere usati all'interno del programma, e come questi valori devono essere trasformati. Il controllo sull'uso corretto dei tipi è automatico, e un programma che contiene errori nell'uso dei tipi non potrà nemmeno essere avviato [V. la sez. "Typing" in @Ousterhout1998, 24].
  - I linguaggi che sono *dynamically-* e *loosely-typed* richiedono meno codice, e sono più facili da sviluppare, perché non è necessario indicare il tipo di ogni valore. Lo svantaggio è che i *bug* relativi all'uso di un valore di tipo sbagliato, o una conversione fra tipi inaspettata, possono essere rilevati solo al momento dell'esecuzione.
  - Alcuni linguaggi *dynamically-typed* permettono di inserire dei *type hints* (suggerimenti dei tipi) che sono ignorati durante l'esecuzione, ma possono essere utilizzati prima che il programma venga eseguito per controllare che non ci siano errori nella gestione dei tipi.[^TypeHints]
- *Immutable values* (valori immutabili): è preferibile usare linguaggi che non permettono di modificare il valore di una variabile, dopo che è stata assegnata. Questo 
  - 
- *Out-of-band errors*: è preferibile usare linguaggi che permettono di restituire due valori in parallelo (il risultato dell'operazione, ed un eventuale errore),[^GestioneErroriGo] in modo che sia più facile da rendere più agevole verificare la presenza di errori (situazioni anomale che sono sorte nell'eseguire l'operazione),[^Errcheck] e fornire all'utente messaggi diagnostici più dettagliati.
  - Alcuni linguaggi tendono ad indicare gli errori *in-band*, e restituiscono un singolo risultato, che può essere il risultato dell'operazione, oppure un valore particolare che indica la presenza di un errore. È più difficile verificare la presenza di errori, e le informazioni diagnostiche sono più scarne.[^DefinizioneInBandError]
  - È possibile cercare di approssimare un errore *out-of-band* restituendo un singolo valore che contiene al suo interno più elementi, ma è necessario che tutto il codice si adegui a questa nuova convenzione.[^GLibError]
  - È sconsigliabile usare le "eccezioni", 

[^BugGestioneManualeMemoria]: V. A. Gaynor, *Introduction to Memory Unsafety for VPs of Engineering*, 2019, <https://web.archive.org/web/20190812151808/https://alexgaynor.net/2019/aug/12/introduction-to-memory-unsafety-for-vps-of-engineering/>, e P. Kehrer, *Memory Unsafety in Apple's Operating Systems*, 2019, <https://web.archive.org/web/20190725163137/https://langui.sh/2019/07/23/apple-memory-safety/>. 
[^DefinizioneBufferOverflow]: V. OWASP Foundation, *Buffer Overflow*, 2022, <https://web.archive.org/web/20220521104033/https://owasp.org/www-community/vulnerabilities/Buffer_Overflow>.
[^ElectricFence]: V. B. Perens, *efence(3) - Linux man page*, sez. *Description*, 1999, <https://web.archive.org/web/20070806045202/https://linux.die.net/man/3/efence>.
[^ValgrindMemcheck]: V. Sviluppatori di Valgrind, *Valgrind User Manual*, sez. *Memcheck: a memory error detector*, 2023, <https://web.archive.org/web/20231113151236/http://valgrind.org/docs/manual/mc-manual.html>.
[^PythonCFFI]: È possibile combinare un linguaggio *memory-safe* (Python) con un linguaggio *memory-unsafe* (C). V. A. Rigo, M. Fijalkowski, *CFFI documentation*, sez. *Overview*, 2018, <https://web.archive.org/web/20210918004604/https://cffi.readthedocs.io/en/stable/overview.html>.
[^DefinizioneTipi]: Per una definizione di *statically-typed* e *strongly-typed*, v. T. Hurd, *Introduction to Static, Dynamic, Strong and Weak Data Types*, 2021, <https://web.archive.org/web/20210603180908/https://www.sitepoint.com/typing-versus-dynamic-typing/>.
[^TypeHints]: V. Sviluppatori di Mypy, *Mypy: Static Typing for Python*, sez. *What is mypy?* 2023, <https://github.com/python/mypy/tree/3838bff555de4237cb77ef2a191a6791a4d0ae7a>.
[^GestioneErroriGo]: È il caso di Go. V. A. Gerrand, *Error Handling and Go*, 2011, <https://web.archive.org/web/20210823191611/https://go.dev/blog/error-handling-and-go>.
[^Errcheck]: Nel caso di Go, con strumenti come *Errcheck*. V. K. Kisiel, *Errcheck*, 2023, <https://github.com/kisielk/errcheck/tree/7f94c385d0116ccc421fbb4709e4a484d98325ee>.
[^DefinizioneInBandError]: V. F. Long, W. Snavely, *ERR52-J. Avoid in-band error indicators*, 2017, <https://web.archive.org/web/20230329034143/https://wiki.sei.cmu.edu/confluence/display/java/ERR52-J.+Avoid+in-band+error+indicators>.
[^GLibError]: Ad esempio, la libreria *GLib* ha creato un meccanismo per la segnalazione degli errori *ad-hoc*. V. Team di Sviluppo GTK, *Error reporting*, 2021, <https://web.archive.org/web/20210921180746/https://docs.gtk.org/glib/error-reporting.html>.

### Fattori sociali

Per fattori sociali si intendono fattori che possono influire positivamente o negativamente sullo sviluppo del software scientifico, ma che non riguardano le caratteristiche tecniche del linguaggio in sé, quanto piuttosto come il linguaggio viene utilizzato.

Il primo fattore favorevole è la popolarità del linguaggio. Più un linguaggio è largamente utilizzato, e più è facile trovare risorse tecniche, codice da riutilizzare, programmatori che possono aiutare a migliorare il codice. Ad esempio, i linguaggi C e C++ sono rischiosi da utilizzare nel software scientifico perché *memory-unsafe*, ma allo stesso tempo, hanno larghissima utilizzazione nel mondo della programmazione, e quindi esiste un grande numero di risorse e strumenti che aiutano a sviluppare applicazioni robuste ed affidabili.

Il secondo fattore è l'età del linguaggio. È preferibile evitare linguaggi nuovi, sperimentali, o che cambiano di frequente, e concentrarsi su linguaggi che esistono da tempo, maturi e stabili. Ad esempio, C/C++, Java e Python sono stati creati decenni fa, sono largamente usati dall'industria, e quindi, è presumibile che continueranno ad essere supportati ed utilizzati nel tempo, senza cambiamenti significativi. Il linguaggio Go è più recente, ma gli sviluppatori hanno promesso che si impegneranno a garantire la retro-compatibilità delle versioni successive del linguaggio con le versioni precedenti.[^GoCompatibilità]

[^GoCompatibilità]: V. R. Cox, *Backward Compatibility, Go 1.21, and Go 2*, 2023, <https://web.archive.org/web/20230814162240/https://go.dev/blog/compat>.

Un altro fattore da considerare è la filosofia che ispira il linguaggio, o che viene incoraggiata dai programmatori che usano il linguaggio. Ad esempio, uno dei principi di Python è:[^ZenOfPython]

> *There should be one-- and preferably only one --obvious way to do it.*
>
> (Ci dovrebbe essere un -- e preferibilmente, solo uno -- modo ovvio di fare le cose.)

Viceversa, il motto del linguaggio Perl è:

> *There's more than one way to do it.*
>
> (C'è più di un modo per fare qualcosa.)

L'esistenza di più modi per raggiungere lo stesso risultato contrasta con le esigenze di rigore del software scientifico, e complica lo sviluppo del software. I programmatori devono saper riconoscere le varie modalità, e devono essere a conoscenza degli effetti che ogni modalità può produrre.

R. Winestock, *The Lisp Curse*, 2011, <https://web.archive.org/web/20110416211304/http://winestockwebdesign.com/Essays/Lisp_Curse.html>.

[^ZenOfPython]: V. T. Peters, *PEP 20 -- The Zen of Python*, 2004, <https://web.archive.org/web/20220309222224/https://peps.python.org/pep-0020/>.

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
- Il *changelog* (lista dei cambiamenti) o il file *NEWS* sono file che contengono una descrizione dei cambiamenti fra le varie versioni del programma. Per il software scientifico, è importante indicare tutti i cambiamenti che possono influire in maniera significativa sui risultati.^[Ad esempio, la risoluzione di un bug, o il cambiamento o eliminazione di un metodo di analisi.]
- *Tutorial* e guide, che spiegano in maniera dettagliata come raggiungere un determinato risultato.

Per il software scientifico, la finalità di questi documenti è di garantire che l'utilizzatore finale sia in grado di installare ed utilizzare il programma correttamente, e sia reso consapevole di eventuali *bug* e limitazioni già note agli sviluppatori.

In particolare, è preferibile seguire uno stile discorsivo, ed evitare ad ogni costo lo stile lapidario tipico delle *manpages* (pagine di manuale), una forma tradizionale di documentazione del software. Le *manpages* seguono lo stile delle *reference guides*, indicando tutte le opzioni che un programma può utilizzare in ordine alfabetico, non secondo un ordine pedagogico, e presuppongono che l'utilizzatore sappia già come usare il programma [V. sezioni "For Programmers, Not Users" e "The Source Code Is the Documentation" in @Garfinkel1994, 53--55]. Questo tipo di presunzione è inaccettabile per il software ad uso scientifico.

## Sistemi di controllo di versione

I sistemi di controllo di versione (*version control system*, *VCS*) sono degli strumenti estremamente utili per lo sviluppo del software in generale, ma alcune loro caratteristiche sono particolarmente importanti per lo sviluppo del software scientifico.
In questa sezione si farà riferimento alla terminologia ed ai concetti usati da Git,[^AltriVCS] il sistema di controllo di versione attualmente usato dalla stragrande maggioranza degli sviluppatori [Per un'introduzione pratica a *Git*, v. @Chacon2023].

Il compito di un *VCS* è di tenere traccia dei cambiamenti che sono stati apportati ad un gruppo di file.
Un gruppo di cambiamenti si chiama *commit*,[^DefinizioneCommit] ed i *commits* sono conservati all'interno di un *repository* (deposito).

Git permette di creare una copia di un *repository* con il comando *git clone*, e permette di estrarre un particolare *commit* con *git checkout*.
Questi due comandi sono estremamente importanti ai fini della ripetibilità e riproducibilità dell'analisi, perché permettono di ottenere una copia dell'intero *repository*, e quindi di estrarre una versione specifica del software.^[Naturalmente, nella relazione sarà necessario indicare da dove il *repository* è stato ottenuto, e quale *commit* è stato usato per svolgere l'analisi.]

Il comando *git commit* permette di creare nuovi *commit*.
Ogni *commit* è identificato in maniera univoca da un *hash*, calcolato sulla base dei suoi metadati e contenuti:

- I metadati di un commit includono i *parent commit(s)* (commit-*genitore/-i*) l'autore, la data ed ora di creazione, e una spiegazione relativa ai contenuti.
- I contenuti del commit sono i cambiamenti che sono stati apportati ai file rispetto al *parent commit*, ossia, l'ultimo commit che è stato creato.

Prima di usare il codice, è necessario confermare che il *repository* sia integro. L'uso di *hash* permette di rilevare qualsiasi modifica (accidentale o intenzionale) al *repository* con il comando *git fsck* (abbreviazione di *file-system check*).

Esistono vari comandi che permettono di analizzare la catena dei *commit*. Ad esempio:

- A fini legali, è possibile usare *git log*[^CasoGlobaleaks] e *git blame* in caso di violazione delle licenze.
- A fini tecnici, *git bisect* permette di determinare l'esatto *commit* in cui è stato introdotto un certo *bug*.

Git permette di creare un "ramo" con il comando *git branch*. Normalmente, un *repository* ha un ramo principale (*master*, *main* o *trunk*), che contiene il codice considerato stabile ed affidabile, e uno o più rami chiamati *topic* o *feature branches*, che contengono i *commit* relativi ad una certa funzionalità.

Quando questa funzionalità ha raggiunto un grado sufficiente di maturità, viene integrata nel ramo principale con *git merge*.^[Quando si usa *merge*, si produce un nuovo *commit* con due genitori: l'ultimo *commit* sul ramo principale, e l'ultimo *commit* nel ramo che è stato unito.] Viceversa, se le modifiche non sono utili, è possibile eliminare il ramo, e riportare il codice alla versione presente nel ramo principale. Questo significa che i programmatori possono sperimentare liberamente, 

[^AltriVCS]: Oltre a Git, esistono anche altri sistemi. V. R. Donovan, *Beyond Git: The other version control systems developers use*, 2023, <https://web.archive.org/web/20230109140009/https://stackoverflow.blog/2023/01/09/beyond-git-the-other-version-control-systems-developers-use/>.
[^DefinizioneCommit]: Il sostantivo *commit* fa parte del gergo specializzato dell'informatica. In inglese, uno dei possibili significati del verbo *to commit* è "affidare". Pertanto, *commit* può essere tradotto come "affidamento", nel senso che i dati vengono "affidati" al *repository* affinché li conservi.
[^CasoGlobaleaks]: Ad esempio, *GlobaLeaks* è distribuito con la licenza *copyleft* AGPL. L'ANAC modifica GlobaLeaks, ed il 14 gennaio 2019 lo distribuisce sotto il nome di *OpenWhistleblowing* con una licenza diversa, la Licenza Pubblica dell'Unione Europea. Dopo qualche mese, la licenza viene correttamente ripristinata alla AGPL. V. Centro Hermes, *The Italian National Anti-Corruption Authority (ANAC) and the Hermes Center settle a dispute over the aplication of the AGPL license to GlobaLeaks-based OpenWhistleblowing software*, 2020, <https://web.archive.org/web/20201019132745/https://www.globaleaks.org/anac-and-the-hermes-center-settle-a-dispute-over-the-application-of-the-agpl-license-to-globaleaks-based-openwhistleblowing-software/>. È possibile visualizzare i *commits* che hanno modificato il file "LICENSE" (v. <https://github.com/anticorruzione/openwhistleblowing/commits/master/LICENSE>), e notare che la violazione della licenza AGPL è iniziata il 14 gennaio 2019, ed è terminata il 24 ottobre 2019.

## Codice di terze parti

Per codice di terze parti, si intende il codice scritto da sviluppatori diversi dallo sviluppatore (o sviluppatori) originali (o principali).
Si possono distinguere due tipi di codice di terze parti: il riutilizzo di codice già esistente, e l'aggiunta di contribuzioni di terze parti.

### Riutilizzo di codice esistente

Nel caso del software scientifico, si potrebbe argomentare che è preferibile evitare il codice di terze parti, per due ragioni:

- Il codice scritto da sviluppatori di terze parti è generico, e non è sviluppato tenendo a mente i requisiti particolari dell'informatica forense.^[Ad esempio, nel codice generico è meglio dare una riposta approssimativa in tempi rapidi, ma per l'informatica forense è meglio dare una risposta precisa anche se richiede tempi più lunghi.]
- Non si è familiari con il codice scritto da terze parti, e quindi è più difficile stimare se sia affidabile, e modificarlo per allinearlo alle proprie esigenze.^[Viceversa, con il proprio codice si ha cognizione diretta dei *bug*, dei punti deboli e delle limitazioni, e della sua struttura, quindi può essere modificato in tempi minori.]

È possibile confutare entrambe queste nozioni.

I requisiti di funzionamento del software specializzato per l'analisi forense^[Lo strumento di analisi deve essere robusto (gli *input* invalidi devono essere rigettati, e gli errori che si verificano devono essere gestiti in maniera adeguata), deve essere preciso (gli *output* sono corretti). L'analisi deve essere ripetibile (non modificare gli *input* originali), riproducibile (gli stessi *input* producono sempre lo stesso *output*), e dettagliata (deve contenere quante più informazioni diagnostiche utili possibile).] sono condivisi anche dal software "generico". Tutto il software ha interesse a produrre risultati affidabili, l'unica differenza è il bilanciamento fra l'affidabilità e le altre esigenze (efficienza, sviluppo di altre funzionalità&hellip;) [È la tensione fra *doing the right thing* (fare la cosa giusta) e *worse-is-better* (il meglio è il nemico del bene), v. sez. "The Rise of Worse is Better" in @Gabriel2000, 7--10].

Il codice scritto da altri ha il vantaggio di essere stato sottoposto ad un controllo di qualità diffuso, da parte degli utenti^[Quanti più utenti usano il software, ognuno con le proprie configurazioni di hardware e software, tanto più ci si può aspettare che i risultati siano riproducibili, e più *bug* possono essere scoperti e corretti.] e sviluppatori^[Quanti più sviluppatori di terze parti contribuiscono a sviluppare il software, tanto più ci sarà un incentivo a riorganizzare e documentare il codice in maniera che sia di immediata comprensione anche a soggetti che leggono quel codice per la prima volta.]
Specularmente, questi vantaggi diventano svantaggi nel codice nuovo e scritto *ad hoc*. Il fatto che il codice è nuovo significa che è stato messo alla prova solo in un numero limitato di casi, e quindi è intrinsecamente meno affidabile.

Si possono trarre due conclusioni.
La prima è l'opportunità di riutilizzare il codice libero già esistente, dove possibile e ragionevole.^[
Ad esempio, perché non esistono ancora soluzioni mature e largamente affermate. Se invece queste soluzioni esistono, è necessario spiegare perché sono inadeguate, ed è preferibile iniziare da zero. In generale, è sempre preferibile evitare di partire da zero. V. J. Spolsky, *Things You Should Never Do, Part I*, 2000, <https://web.archive.org/web/20170104073437/https://www.joelonsoftware.com/2000/04/06/things-you-should-never-do-part-i/>.]
La seconda è che in teoria, qualsiasi software libero non-specializzato può essere modificato in modo che risponda alle esigenze dell'informatica forense.^[Viceversa, nel caso del software forense proprietario, potrebbe essere impossibile esaminare il codice sorgente per verificare il corretto funzionamento del programma.]

Quando si usa codice di terze parti all'interno del software scientifico, è utile usare una tecnica chiamata *vendoring*, ossia, includere una copia integrale del codice di terze parti all'interno del proprio software.^[
V. T. MacWright, 2021, *Vendor by default*, <https://web.archive.org/web/20230929010221/https://macwright.com/2021/03/11/vendor-by-default>.]
Questo permette di evitare vari problemi, come il *dependency hell*,^[
Per una definizione del termine e vari esempi, v. O. Barcz, *What is Dependency Hell and How to Avoid it?*, 2021, <https://web.archive.org/web/20230208172253/https://www.boldare.com/blog/software-dependency-hell-what-is-it-and-how-to-avoid-it/>.]
i *supply-chain attacks*,^[
Situazioni in cui un attacco informatico va a compromettere la fonte da cui viene scaricato il software. Ad es., v. D. Goodin, *Backdoor added to PHP source code after breach of internal git server*, 2021, <https://web.archive.org/web/20210329192422/https://arstechnica.com/gadgets/2021/03/hackers-backdoor-php-source-code-after-breaching-internal-git-server/>.]
e garantisce in maniera massima la riproducibilità del software, perché tutti i componenti necessari sono già inclusi nel progetto.

### Contribuzioni di terze parti

Le contribuzioni di terze parti sono una conseguenza naturale dello sviluppo del software libero.
Se tutti hanno il diritto di ottenere una copia del codice e modificarlo, chi corregge dei *bug*, o aggiunge delle funzionalità nella propria copia può desiderare di condividere questi miglioramenti con gli sviluppatori originali.

Queste modifiche sono chiamate *patch*.^[Letteralmente, "pezze", perché saranno metaforicamente "cucite" all'interno del codice.]
Il solo fatto che un soggetto terzo invia una *patch* agli sviluppatori originali non significa che sarà automaticamente inclusa,^[
Questo è forse il malinteso più comune riguardo il software libero: se il codice è libero, e quindi chiunque è libero di inviare *patch*, allora qualsiasi contribuzione sarà accettata.]
un progetto può essere libero e *open-source*, ma *closed-contribution*.^[
Ad esempio, *litestream* era un progetto che non accettava contribuzioni da parte di terzi. V. B. Johnson, *litestream*, 2021, <https://github.com/benbjohnson/litestream/tree/4d41652c12c182d7f0721cc8eda0e3c78d98bae0>. Attualmente, il progetto accetta contribuzioni di terze parti.]

È opportuno che gli sviluppatori del software libero ad uso scientifico definiscano un processo per accettare le contribuzioni.

Il primo passo è indicare gli obiettivi che il progetto vuole raggiungere, sia in positivo che in negativo, in modo che potenziali contributori sappiano in anticipo che tipo di *patch* saranno accettate.^[
Gli obiettivi da non raggiungere sono chiamati *non-goals*. Permettono di concentrare gli sforzi di sviluppo sugli elementi realmente essenziali, e di evitare il *feature creep* (eccesso di funzionalità). È preferibile avere pochi strumenti di analisi altamente affidabili, che un grande numero di metodi il cui funzionamento non è stato verificato in maniera esaustiva.]

Se la *patch* è rilevante per il progetto, viene sottoposta a *code review* (revisione del codice), per verificare la qualità del codice,^[
La qualità riguarda non solo il lato puramente tecnico (il codice funziona correttamente, non introduce nuovi *bug*, non ha problemi immediatamente evidenti), ma anche il lato stilistico (la contribuzione deve seguire lo stile del codice già esistente). Ad esempio, esiste una guida su come preparare le patch per il kernel Linux, v. Comunità di sviluppo del kernel, *Submitting patches: the essential guide to getting your code into the kernel*, n.d., <https://web.archive.org/web/20180828081227/https://www.kernel.org/doc/html/v4.17/process/submitting-patches.html>.]
e l'assenza di contribuzioni in mala fede.^[
Ad esempio, c'è stato un esperimento in cui dei ricercatori hanno inviato delle *patch* contenenti bug al kernel Linux, allo scopo di verificare se gli addetti alla *code review* le avrebbero rigettate o meno. V. S. J. Vaughan-Nichols, *Greg Kroah-Hartman bans University of Minnesota from Linux development for deliberately buggy patches*, 2021, <https://web.archive.org/web/20210421203003/https://www.zdnet.com/article/greg-kroah-hartman-bans-university-of-minnesota-from-linux-development-for-deliberately-buggy-patches/>.] Se la *patch* supera questa verifica, potrà essere integrata nel codice.

Infine, è utile richiedere l'accettazione di un *CLA* (*contributor license agreement*, accordo sulla licenza per chi contribuisce) come condizione per includere il codice di terze parti, in modo da evitare dubbi riguardo a chi appartengano i diritti intellettuali relativi al codice.^[
Ad esempio, la FSF richiede che i terzi, che contribuiscono codice a programmi di cui la FSF detiene il diritto d'autore, conferiscano alla FSF i diritti d'autore relativi alla loro contribuzione. V. E. Moglen, *Why the FSF Gets Copyright Assignments from Contributors*, 2022, <https://web.archive.org/web/20220102214048/https://www.gnu.org/licenses/why-assign.html>.]

## Qualità del codice, riproducibilità dei programmi

Esistono vari strumenti che permettono di controllare la qualità del codice, e verificare e garantire che funzioni in maniera corretta e riproducibile anche su sistemi diversi.

I *linter* sono software che controllano se il codice rispetta una serie di regole:^[
V. Fondazione OWASP, *Linting Code*, 2022, <https://web.archive.org/web/20230328005626/https://owasp.org/www-project-devsecops-guideline/latest/01b-Linting-Code>.]

- Le regole stilistiche servono a garantire che il codice sia coerente dal punto di vista estetico.^[Ad esempio, esistono numerose opzioni ed opinioni su dove posizionare le parentesi graffe, su quanti e quali spazi e ritorni a capo usare, riguardo la lunghezza massima delle righe di codice&hellip; Per alcuni esempi, v. Contributori di Wikipedia, *Stile d'indentazione*, 2024, <https://it.wikipedia.org/w/index.php?title=Stile_d'indentazione&oldid=137258932>. Un *linter* può applicare queste regole in maniera automatica.] Queste regole possono essere sempre applicate in maniera automatica.
- Le regole logiche servono a correggere del codice che presenta problemi diversi dai semplici errori di sintassi, e garantiscono il rispetto delle *best practices* relative a quel linguaggio di programmazione.^[Ad esempio, *shellcheck* contiene centinaia di regole su come scrivere degli *shell script* robusti. V. <https://www.shellcheck.net/wiki/>.] In alcuni casi le correzioni possono essere applicate automaticamente, perché esiste una sola soluzione. Altrimenti, è necessario l'intervento del programmatore.
- Per i linguaggi *dynamically-typed*, i *linter* possono essere usati per controllare il corretto uso dei tipi all'interno del programma.^[Ad esempio, v. MyPy, <https://mypy-lang.org/>.]

I *tests*^[
Esistono varie tipologie di test. Gli *unit tests* controllano il funzionamento delle singole "unità" logiche di cui il programma è composto. Gli *integration tests* controllano che più unità funzionano correttamente insieme. Infine, gli *end-to-end tests* controllano che l'intero programma, dall'avvio fino al termine dell'esecuzione, funziona correttamente. In questa sezione, si userà l'espressione *test(s)* si riferisce a tutte e tre le categorie.]
servono a controllare il corretto funzionamento del programma.
Facendo un'analogia con il diritto, mentre i *linter* svolgono un controllo sugli atti (sul codice), di legittimità (puramente formale), e preventivo (prima dell'esecuzione del programma), i *tests* svolgono un controllo sull'attività (i risultati che vengono raggiunti), che per sua natura è sempre successivo [@Clarich2022, 276--277].

Dal punto di vista concettuale, un *test* consiste in tre parti: il codice da eseguire, i dati forniti in *input* al codice, ed il risultato che ci si aspetta in *output*.
Se il risultato prodotto dal codice non corrisponde al risultato aspettato, il test "fallisce" (*fail*), altrimenti è "superato" (*pass*).

Per il software ad uso scientifico, è estremamente importante eseguire i test prima di usare un programma, per verificare che funzioni correttamente.^[
È altrettanto importante controllare anche i *tests* stessi. La qualità dei test è molto più importante della loro quantità. Idealmente, i test devono verificare non solo che gli *input* validi siano elaborati correttamente, ma anche, e soprattutto, che gli *input* invalidi vengono correttamente identificati come tali, e rigettati dal programma.]
Nella documentazione relativa all'uso del programma, è importante indicare come eseguire i *tests*, e dare informazioni sommarie riguardo al loro contenuto.^[Ad esempio, indicare che tipi di test sono inclusi (*unit*, *integration*, e *end-to-end*), come sono strutturati, quante casistiche coprono, se ci sono test che potrebbero fallire su/al di fuori di determinati sistemi, ma questo non incide sul corretto funzionamento del programma&hellip;]

Ancora, è utile adottare la metodologia *TDD* (*test-driven development*, sviluppo guidato dai test), dove i *tests* vengono scritti prima ancora di scrivere il codice.
Questo approccio ha due vantaggi:

- L'insieme dei *tests* diventa una specificazione formale di come il programma si deve comportare, e definiscono i limiti operativi del programma.^[In altre parole, se tutti i *tests* sono superati, e se i dati forniti al programma al momento dell'utilizzazione pratica rientrano nel tipo di dati che sono gestiti correttamente nei *tests*, la conclusione logica è che il risultato prodotto dal programma sarà corretto. Naturalmente, questa conclusione dipende interamente dalla qualità e quantità dei *tests*.]
- Conseguentemente, i *tests* diventano una forma aggiuntiva di documentazione per il codice per gli sviluppatori.^[I *tests* sono usa serie di esempi pratici di come usare le funzioni offerte dal codice.]

Inoltre, i test possono essere usati anche dopo che il codice è stato scritto, per evitare le *regressions* (regressioni).
Una regressione è la situazione che si verifica quando un *bug* corretto in precedenza si ripresenta di nuovo, a seguito di cambiamenti nel codice.
Per rilevarle in maniera automatica, è possibile aggiungere un *test* che controlla la presenza o meno di quel *bug*.

----

**fuzzing**

- garantire che il programma funziona in maniera prevedibile anche con input corrotti
- evitare situazioni in cui il software 

**Build riproducibili**

**containerization**
