# Een repo beginnen: `git init`
Een project dat met Git beheerd wordt, noemen we een "**Git repository**" of, in het kort "**repo**". Een repository is niet veel meer dan een gewone map met wat verborgen "metadata"[^1]. Deze metadata staan je toe te bekijken welke files op welk tijdstip gewijzigd zijn, hoe je veranderingen via het internet gedeeld kunnen worden met collega's, enzovoort.

Om deze metadata aan te maken, heb je het commando `git init` nodig. Je voert het uit **in** de map die je in een volwaardige repository wil veranderen. Je kan hiervoor onder Windows gebruik maken van PowerShell en van Terminal[^2] onder OS X.

.. warning::

   Voer nooit `git init` uit in een submap van een Git repository. Dit leidt tot heel misleidende foutboodschappen. Als je dan niet meteen weet wat er aan de hand is, loop je het risico je projectgeschiedenis ernstig te beschadigen.

Deze eerste metadata staat in een map met als naam `.git`, inclusief de punt vooraan. Op de meeste systemen is deze map standaard onzichtbaar en dat is een goede zaak! Je zou als beginner **nooit** zaken in deze map moeten wijzigen. Als je deze map beschadigt, ben je mogelijk je projectgeschiedenis kwijt. Als je ze verwijdert, heb je terug een doodnormale map.

[^1]: "Metadata" betekent "data die over andere data gaat". Deze uitdrukking is niet specifiek voor Git. Die "andere data" waarover de metadata gaat bestaat hier uit de bestanden in jouw project. De metadata houdt bij welke wijzigingen hebben plaatsgevonden, wanneer,...
[^2]: Eigenlijk maak je gebruik van de shell, waartoe je toegang hebt via de terminal. Technisch verschilletje dat hier verder niet zo belangrijk is.

# Opdracht
Maak een bestand met als naam `beginnen-git-init.txt`. Beantwoord in dat bestand volgende vragen met één antwoord per regel.

1. Wat is de korte naam (vier letters) voor een project waarvoor we Git gebruiken?
2. Welk commando moet je ingeven om een gewone map te voorzien van de nodige metadata voor versiebeheer?
3. Hoe heet de map die de metadata bevat met je projectgeschiedenis?

Voer vervolgens uit in je shell (dus via Powershell of Terminal), in je Git repository:

1. `git add beginnen-git-init.txt`
2. `git commit -m "Antwoorden git init"`
3. `git push`
4. Ga tenslotte naar "Controleer oefeningen" op deze website, kies je Git repository voor dit vak, kies het batchtype "voor oefeningen zonder side effects", duid de oefening "Beginnen: git init" aan en klik op "checken".
