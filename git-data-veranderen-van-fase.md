# Data definitief maken
Data in Git staat altijd op één van drie plaatsen:

1. working directory
2. staging area
3. project history

Data kan van elk van deze plaatsen naar elk van de andere twee plaatsen verplaatst worden. Wij bekijken hier eerst de richting die het vaakst voorkomt: van working directory naar staging area en van staging area naar project history.

## Data in de working directory plaatsen
Hier heb je geen Git commando's voor nodig. Als je iets aanpast in een map die onder het beheer van Git staat, komt die aanpassing normaal in de working directory terecht.[^1] Dat is zelfs zo wanneer je een volledig nieuwe file aanmaakt of een bestand volledig wist.

Om te bekijken welke files wijzigingen bevatten die nog niet in je logboek staan (zelfs niet in potlood), gebruik je het commando `git status -u`.

## Data van de working directory naar de staging area verplaatsen
Om een wijziging "in potlood" in je logboek te noteren, moet je wel een commando van Git gebruiken. Dat commando is `git add`. Je laat dit commando volgen door de naam van het bestand waaraan je iets veranderd hebt, zelfs als je dat bestand gewist hebt. Een verkorte notatie is `git add --all`. Deze notatie zet **alle** wijzigingen in de staging area. Let op dat je niet te veel in je logboek zet!

## Data van de staging area naar de project history verplaatsen
Om wijzigingen "in potlood" om te zetten naar wijzigingen "in pen", gebruik je het commando `git commit`. Dit maakt één nieuwe nota in je logboek en zet alle wijzigingen over van de staging area naar de project history. **Met wijzigingen die in de working directory staan, gebeurt niets!**

Wanneer je een nota in je logboek zet, moet je ook beschrijven wat de gebundelde wijzigingen doen. Als je `git commit` zo uitvoert, wordt er een text editor geopend waarin je dit bericht kan intypen. Dit is vaak wat onhandig, dus je kan ook gebruik maken van `-m` en meteen daarna het bericht tussen aanhalingstekens plaatsen. Bijvoorbeeld: `git commit -m "Knop voor password reset en code achter de schermen toegevoegd."`

# Opdracht
Maak een tekstbestand aan met daarin exact de tekst (zonder aanhalingstekens) "de kat krabt de krollen van de trap!"

{% instructions %}

# Voetnoten
[^1]: Hier zijn uitzonderingen op, maar ze vallen goed mee. Onthoud het voorlopig zoals het op deze pagina staat.
