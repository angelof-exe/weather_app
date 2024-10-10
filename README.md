# Weather App 🌤️🌧️☂️

Applicazione sviluppata con il framework Flutter in cui tramite l'utilizzo della posizionee è possibile ottenere le condizioni meteorologiche attuali.

## Indice

- [Struttura del progetto](#struttura-del-progetto)
- [Installazione](#installazione)
- [Funzionalità](#funzionalità)
- [Struttura del Progetto](#struttura-del-progetto)
- [Utilizzo](#utilizzo)
- [Contributi](#contributi)
- [Licenza](#licenza)

### Struttura del Progetto

```
.
├── analysis_options.yaml
├── fonts
│   └── SpartanMB-Black.otf
├── images
│   ├── city_background.jpg
│   └── location_background.jpg
├── lib
│   ├── main.dart
│   ├── screens
│   │   ├── city_screen.dart
│   │   ├── loading_screen.dart
│   │   └── location_screen.dart
│   ├── services
│   │   ├── location.dart
│   │   ├── networking.dart
│   │   └── weather.dart
│   └── utilities
│       └── constants.dart
├── pubspec.lock
├── pubspec.yaml
├── README.md
└── weather_app.iml
```


## Installazione

Per installare ed eseguire l'app localmente, segui questi passaggi:

1. Clona il repository:
    ```bash
    git clone https://github.com/tuo-username/nome-del-progetto.git
    ```
2. Vai nella directory del progetto:
    ```bash
    cd nome-del-progetto
    ```
3. Installa le dipendenze:
    ```bash
    flutter pub get
    ```
4. Esegui l'app:
    ```bash
    flutter run
    ```

## Funzionalità

- **Recupero della Posizione**: Utilizzando il file `location.dart`, l'app permette di ottenere la posizione attuale dell'utente.
- **Chiamate di Rete**: Grazie al file `networking.dart`, l'app esegue chiamate API per recuperare i dati esterni.
- **Interfaccia Utente Responsive**: Gestita tramite il file `main.dart`.

## Utilizzo

1. Quando l'app viene eseguita, verrà richiesto all'utente di fornire i permessi per accedere alla posizione.
2. I dati vengono recuperati tramite chiamate di rete usando il modulo `networking.dart`.

## Contributi

Contributi, issue e suggerimenti sono benvenuti! Sentiti libero di aprire una issue o fare una pull request.

1. Fai un fork del progetto
2. Crea un branch per la tua feature:
    ```bash
    git checkout -b feature/nuova-funzionalità
    ```
3. Fai un commit delle modifiche:
    ```bash
    git commit -m 'Aggiunta nuova funzionalità'
    ```
4. Fai un push del branch:
    ```bash
    git push origin feature/nuova-funzionalità
    ```
5. Apri una pull request.

## Licenza

Questo progetto è distribuito sotto la licenza MIT. Vedi il file `LICENSE` per maggiori dettagli.



