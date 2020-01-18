# Fasen van data in Git

## Git is zoals een logboek
Data in een Git repository kan zich in drie fasen bevinden. Om je deze drie fasen voor te stellen, kan je een Git repository zien als een project met een logboek. In dat logboek wordt bijgehouden wanneer bepaalde data is toegevoegd, aangepast of verwijderd. Om alles overzichtelijk te houden, wordt niet elke wijziging zomaar genoteerd, maar worden wijzigingen in betekenisvolle groepjes bijgehouden.

Stel je voor dat je een nieuwe knop toevoegt aan een applicatie, bijvoorbeeld om je wachtwoord te resetten. Die knop moet zichtbaar zijn voor de gebruiker, dus er zal een wijziging moeten plaatsvinden in de user interface. Code om een wachtwoord te resetten staat normaal echter niet op dezelfde plaats als code voor de user interface.[^1] Als je in je logboek wil noteren dat je een nieuwe knop hebt toegevoegd om het wachtwoord te resetten, kan je de wijziging in de user interface best groeperen met de wijziging achter de schermen. Soms moet je even zoeken naar welke wijzigingen je samen wil noteren in het logboek, dus het is een goed idee de wijzigingen eerst in potlood te noteren en ze pas definitief in pen te noteren wanneer je tevreden bent.

## De technische uitleg
Het verschil tussen "niet genoteerd in het logboek", "genoteerd in potlood" en "genoteerd in pen" bestaat ook in Git, maar wordt wat anders uitgedrukt. In Git bevindt data zich op één van volgende drie "plaatsen":

* working directory
* staging area
* project history

### Working directory
Data in de working directory is data waar Git eigenlijk niets vanaf weet. Ze staat wel in de **map** waar je een Git repository van hebt gemaakt, maar er is geen metadata over. Met andere woorden, het is alsof je er nog **niets** over hebt genoteerd in je logboek, zelfs niet in potlood.

.. warning::

   We spreken hier heel bewust over "data". Het hoeft niet over volledige bestanden te gaan. Het kan bijvoorbeeld dat er al iets over `A.txt` in je logboek staat, maar niet over de recentste wijzigingen. De recentste wijzigingen staan in dat geval nog in de working directory, maar een vorige versie van de file staat op een van de andere twee "plaatsen".

### Staging area
"To stage" betekent "klaarzetten". De "staging area" is dus waar je bepaalde data "klaar zet" om in het logboek te noteren. Met andere woorden: wat in de staging area staat, is zoals de tekst die je in potlood in je logboek hebt gezet.

### Project history
De project history is alle data die definitief in je logboek is opgenomen. In een goed beheerd project is deze data in overzichtelijke groepjes genoteerd en staat er bij elk groepje ook een beschrijving van wat dat groepje precies verandert aan de code. De project history is dus zoals wat in pen staat.

.. tip::

   Je kan data niet *rechtstreeks* in de project history plaatsen. Je moet je wijzigingen altijd eerst "in potlood" noteren voor je ze "in pen" kan noteren.

## Opdracht
Maak een bestand met als naam fasen-data-in-git.txt. Beantwoord in dat bestand volgende vragen met één antwoord per regel.

* Hoe heet de "plaats" die overeenstemt met nota's in potlood? (twee woorden, allemaal kleine letters)
* Staat er in de verborgen map `.git` iets over wijzigingen in de working directory? (ja/nee)

Voer vervolgens uit in je shell (dus via Powershell of Terminal), in je Git repository:

1. `git add fasen-data-in-git.txt`
2. `git commit -m "Antwoorden fasen data"`
3. `git push`
4. Ga tenslotte naar "Controleer oefeningen" op deze website, kies je Git repository voor dit vak, kies het batchtype "voor oefeningen zonder side effects", duid de oefening "Fasen van data in Git" aan en klik op "checken".

## Voetnoten
[^1]: Soms is code voor de user interface zelfs niet in dezelfde taal geschreven als code om een taak achter de schermen uit te voeren.
