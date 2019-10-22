# DIA UntraceablePicture - 2019 edition

### Students 
Tim Bastiaans & Arian kunovac

### Concept


### Screen sketches
The following images show the screen designs for this application.

![Design](design.png)

### Chosen Technical requirements
- Ionic UI [Ionic UI component](https://ionicframework.com/docs/components)
- Sensor integration: [Microphone] & [Cameraflash]
- HTTP/API integration: [Funtranslations API](https://funtranslations.com/api#)

## 1. Functionalities
The application includes the following functionalities:

- Text translator for the languages available at https://funtranslations.com/api#:
- Sending morse signals by using the cameraflash when translating morse code.
- Speech to text input for the translator.
- Text input for the translator.
- Settings menu with option to change the font size
- Settings menu with option to choose a different app theme.
- Storage to remember your chosen theme.

## 2. Requirements

- [Android sdk](http://www.androiddocs.com/sdk/installing/index.html)
- [Ionic](https://ionicframework.com/getting-started#cli)
- [Npm](https://www.npmjs.com/get-npm)
- Smart device or modern browser

## 3. Installation

Download the zip from Github or clone the project.

After cloning or downloading the project run the code below in the terminal.

- `npm install`
- `ionic cordova plugin add cordova-plugin-advanced-http`
- `ionic cordova plugin add cordova-plugin-speechrecognition`

To run the application in the browser run the code below in the terminal.

- `ionic cordova platform add browser`
- `ionic serve --cordova --platform browser`

To run the application on an android device run the code below in the terminal.

`ionic cordova run android`

Alternatively the Android/IOS application [Devapp](https://ionicframework.com/docs/appflow/devapp/) can be used to deploy to a device. 
To run the application on your device run the code below in the terminal.

`ionic serve --devapp`

## 4. Reflectie

### Verbeterpunten

Een groot verbeterpunt van onze app is de gebruikte API. De API zelf is een goede keuze geweest wat betreft de functionaliteit van onze app, maar de gratis versie heeft maar een beperkt aantal calls per uur (5). Hierdoor kan onze app niet lang gebruikt worden. Een oplossing is om na iedere 5 calls met een vpn van locatie te wisselen. Een betere oplossing zou een andere API zijn. Of een library voor de vertalingen. Het is alleen lastig om een library te vinden met de zelfde talen (Ik denk niet dat die bestaat). Een ander verbeterpunt is het tonen van de ingesproken text. Deze veranderd alleen wanneer het invoer veld na het inspreken wordt geselecteerd. Een klein verbeterpunt is ons splash screen. Wij zijn vergeten om hierin de naam van onze app aan te passen.

### Feedback

Wij hebben de feedback van Bart gehad om de morse vertalingen zelf op te nemen in onze app en niet via een API call te doen. Op deze manier zou het mogelijk zijn om de 5 calls per uur limiet van de API te vermijden door lokaal de vertalingen op te slaan. Wij hebben besloten om deze feedback niet te verwerken in onze app, omdat wij de gekozen API nu gebruiken voor meer vertalingen dan alleen maar morse code. Het leek ons niet nuttig om voor 1 vertaling een andere functionaliteit te bouwen.

### App in native

Iets wat anders geïmplementeerd had kunnen worden in een native app is de front-end van onze applicatie. Op dit moment wordt de front-end gemaakt met Ionic. Voor native apps hebben de IDE's die ik gebruikt heb allemaal een scenebuilder ingebouwd (Android Studio, Xcode). Deze maken het zeer eenvoudig om een front-end voor je app te bouwen (Vooral Android Studio. Ik vind Xcode een ramp). Voor onze app zijn wij een tijd bezig geweest met de CSS en met ion-grid om de front-end te maken. Dit had ons in Android Studio weinig tijd gekost door gebruik te maken van de scenebuilder. Er is een scenebuilder voor Ionic genaamd [Ionic Creator](https://ionicframework.com/creator) beschikbaar, maar ik heb hier geen ervaring mee en volgens reviews is er nog geen support voor Ionic 4 en weinig support voor Ionic 2/3.

De voorkeur van ons voor het maken van apps valt op native apps. Je verliest op sommige punten wat snelheid in development wanneer je native apps maakt, maar hybrid apps hebben over het algemeen slechtere performance en security.

## 5. Beoordeling/Evaluatie

Cijfer volgens eigen beoordeling: 6.25

### Basiscijfer 6
Als voldaan is aan deze minimale vereisten:

- [x] 1. Tijdig aanleveren voorstel App-3 (nieuw idee of significante uitbreiding App-2)
- [x] 2. Kopieer deze README naar `beoordeling.md` en maak een eigen `README.md` met weer een 'how-to-run' en functioneel overzicht.
- [x] 3. App werkt ook in je browser (afvangen van fouten door missende native functionaliteit en tonen nette melding gebruiker)
- [x] 4. Ziet er overall goed uit, is responsive en crasht niet (of nauwelijks)
- [x] 5. Heeft - net als App 2 - *niet* de standaard naam, app icon, splash screen of bundle identifier
- [x] 6. De app is van jezelf, niet gekopieerd (e.g. app bevat aantal originele elementen in *1)
- [x] 7. Voor tenminste één platform gebouwd
- [x] 8. Code, folderstructuur en bestandsnamen voldoen aan *de link:https://angular.io/guide/styleguide[Angular Styleguide]*
- [x] 9. De app slaat zaken *(lokaal!) op* (zoals settings, laatste level, eerdere gedane input)*
- [x] 10. App bevat tenminste één (Angular) *custom component* (met attributen/parameters waaronder minstens 1 `@Input` en 1 `@Output`!)*
- [x] 11. GEEN wachtwoorden opslaan in App (als toch perse nodig is, gebruik link:https://ionicframework.com/docs/native/intel-security/[IntelSecurity] of gelijkwaardig; NIET zelf security implementeren)
- [x] 12. Gebruik kan op intuitieve manier invoer doen in app (bv. configuratie, sensor sensitiviteit, spelersniveau van game)
- [x] 13. Schrijf unit tests voor cruciale/complexere functionaliteiten in je app (minsten 4 unit tests)
- [x] 14. Schrijf in de README ook een reflectie op basis van de demo les (met evt. debat): Evaluatie app + hybrid vs. native*

### Minpunten (of knockouts)
- [ ] M1. Te laat ingeleverd (uiterlijk) **-1**
    - Op tijd **-0**
    - X Halve week te laat **-0.5** 
    - Week te laat **-1.0**
    - Meer dan week te laat: **knock-out**, volgende blok inleveren
- [ ] M2. Smelly code _max **-1_**
    - X Geen onlogische variabele namen, alles netjes in services, SOLID **-0**
    - Veel gebruik global scope, te grote methodes, weinig SOLID **-0.5** 
    - Onlogische code, geen services, of hele grote methodes, niet SOLID **-1.0**
    - Onbegrijpelijke of zonder begrip gecopy-paste code: **knock-out**
- [ ] M3. Buggy max **-1**
    - App crasht in zeldzaam geval, oorzaak is beschreven in README met link naar oorzaak/issue en niet op te lossen **-0**
    - App crasht in zeldzaam geval, oorzaak is niet beschreven maar goede mondelinge toelichting **-0.5**
    - App crasht af en toe om voorkombare reden of reden is niet beschreven of onderzocht **-1**
    - App crasht structureel: **knock-out**
- [ ] M4. Crappy layout **max -1**
    - Een of twee onvolkomenheden **-0.25** 
    - Meer onvolkomenheden **-0.5**
    - Geen zorg aan layout besteed **-1.0** 
    - App is alleen usable voor developer: **knock-out**
- [ ] M5. Onduidelijke of ontbrekende evaluatie en/of reflectie in README **max -2**
    - Leesbare en begrijpelijke evaluatie en reflectie **-0**
    - Geen aanpassingen gedaan zonder motivatie **-0.5**
    - Geen of een onduidelijke of onleesbare evaluatie of reflectie geschreven **-1**
    - Geen evaluatie en geen reflectie opgenomen **-2**

### Pluspunten
Uiteraard kun je maximaal maar 4 van de 5 mogelijke bonuspunten halen voor een 6+4=10.

- [x] P1. App werkt op 2 of meer platformen via platformspecifieke code **max +0.5**
    - Ionic doet al het werk voor je (geen platformspecifieke code) **+0**
    - X Minor tweaks mits ook enigszins functioneel toepasselijk (`platform.is`) **+0.25** (bij screenorientation en flash platform.is gebruikt)
    - Complexere en toepasselijk **+0.5**
- [x] P2. Multi 'form factor'/responsive design **max +0.5**
    - Alleen meeschalen/aanpassen door gebruik Ionic componenten **+0**
    - x Serieus gebruik Ionic grid of simpele media query/JS (buiten Ionic) **+0.25** (in tab1 css zijn paar media queries gebruikt)
    - Toepasselijk tonen/verbergen elementen in landscape/portrait of tablet, retina e.d. **+0.5**
- [x] P3. Meerdere integraties **max +0.5**
    - Geen extra integraties t.o.v. App-2 **+0**
    - X Simpel uitlezen, bv. simpele rest API/.json bestand **+0.25**
    - Toepasselijk gebruik van externe API (via http) en/of wrappen van externe library in eigen service (NB code werk in eigen (backend) API's wordt NIET beloond) **+0.5**
- [ ] P4. PWA met tenminste één PWA specifieke implementatie **max +1**
    - Basis PWA van Ionic met triviale service worker **+0**
    - Werkende en non standaard service worker (met bv. Google `workbox`) + 0.25
    - Lighthouse richting 100% score en ook functioneel toepasselijke gebruik bv. push notifications +0.5 tot max **+1**
- [ ] P5. Gebruikt meerdere sensoren op toepasselijke manier **max +0.5**
    - X Geen andere sensors dan 1e 2 in App-2 **+0**
    - Niet zo toepasselijk gebruik van extra sensor **+0.25**
    - Toepasselijk gebruik van sensor met custom visualisatie van opgehaalde data in app **+0.5**
- [ ] P6. Goed en toepasselijk gebruik RxJS operators _max +0.5_
    - Geen extra RxJS t.o.v. app-2 of enkel gebruik van `.subscribe`  of `Observable.` of niet functioneel gebruik +0
    - Triviaal maar wel functioneel gebruik van een of meer RxJS operators +0.25
    - Verwerkt merendeel van logica binnen RxJS +0.5
- [ ] P7. Verspreid in een AppStore / Play Store o.i.d. **max +0.5**
    - Basic/niet te vinden **+0**
    - Energie in promotie gestoken zoals mooie custom icon, aantrekkelijke beschrijving **+0.25**
    - Veel energie in gestoken, promotie truc o.i.d. **+0.5**
- [ ] P8. Vrije toevoeging (ter beoordeling docent, oftewel subjectief) **max. +1**
    - Tsja **+0**
    - Phat **+0.25**
    - Phatter **+0.5**
    - Phatst **+1.0**
