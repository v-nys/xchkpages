# De Python Read-Evaluate-Print Loop (REPL)
Als je IDLE opstart, krijg je een systeemboodschap te zien, gevolgd door `>>>`. Deze `>>>` wijst erop dat je je bevindt in een Read-Evaluate-Print Loop (REPL), ook wel Python shell genoemd. Net als Powershell (of, voor wie Mac gebruikt, bash of zsh) is dit een interactieve omgeving. De commando's die je hier kan intypen verschillen echter van die in Powershell, bash of zsh. Wat hier wel werkt, zijn **statements** in Python.

## statements en expressies
Een statement is één stukje code dat op zich kan worden uitgevoerd. Voorbeelden (niet in code, enkel om het idee te geven):

- een instructie om iets op het scherm te printen
- een instructie om een functie te beëindigen
- het getal `7`
- de som van `4` en `2`
- een `for`-lus
  - binnenin dit soort statement kunnen meerdere kleine statements voorkomen

Een belangrijke deelverzameling van de statements zijn de **expressies**. Dit zijn ofwel datawaarden, ofwel dingen die je kan uitrekenen en die je datawaarden opleveren. Voorbeelden:

- het getal `5`
- de tekst `"grootvader"`
- de som van `4` en `2`
- de omtrek van een cirkel met straal `1`

Een instructie om iets op het scherm te printen is géén expressie, want ze doet gewoon iets. Ze kan niet het antwoord zijn op een vraag.

Samengevat:

- uitvoerbare stukken code zijn statements
- als een statement het antwoord kan zijn op een vraag, is het een expressie

### Meer over expressies en statements
[hier](https://stackoverflow.com/questions/4728073/what-is-the-difference-between-an-expression-and-a-statement-in-python) vind je meer over het verschil tussen expressies en statements.

.. warning::

   Dit is alleen om bovenstaande stof anders te presenteren. Als je de rest van deze pagina begrijpt, hoef je de extra link niet te raadplegen of te studeren.

## De REPL gebruiken
In de REPL kan je statements intypen en zullen deze worden uitgevoerd. Als de statement een resultaat produceert, wordt het resultaat ook getoond.

.. warning::

   Let op, het is niet omdat er iets getoond wordt, dat de statement ook een expressie is. Sommige statements die geen expressie zijn tonen ook dingen op het scherm.

## Opdracht
{% instructions %}
- Voer opgave 2.2 van [Spronck](http://www.spronck.net/pythonbook/pythonboek.pdf) (blz. 14) uit. Geef het Pythonbestand de naam die gebruikt wordt in bovenstaande instructies.
  - gebruik geen enkele spatie in je bestand!
