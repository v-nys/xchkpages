# Cursussen linken

Met behulp van de lege check, kan je cursussen ook linken. Omdat een node niet tot een specifieke cursus behoort en omdat toegankelijk wordt zodra aan alle dependencies in minstens één cursus voldaan is, kan je moeilijk een node "minimale doelstellingen Programmeren 1" aan het begin van "Programmeren 2" zetten. Dan zou de student aan alle vereisten (namelijk: géén vereisten) voldoen om de cursus als voltooid te markeren. Je kan dit oplossen door in Programmeren 2 een niet-oplosbare "dummy" node als dependency van "minimale doelstellingen Programmeren 1" op te nemen. Met andere woorden, een node die de lege check toepast als criterium om een inzending te weigeren.

## Multiple choice opdracht

{% instructions %}

### Vraag 1

Als je een node niet toegankelijk wil maken, dan:

* A. koppel je er een strategie aan die alles weigert
* B. introduceer je een dummy dependency gekoppeld aan een strategie die alles weigert

### Vraag 2

Als je één cursus wil aanduiden als vereiste voorkennis voor een andere cursus, dan:

* A. contacteer je mij (Vincent)
* B. voeg je een node toe met een strategie die alles aanvaardt, waarbij de node afhankelijk is van elke minimale doelstelling
* C. maak je de tweede cursus waarin de eerste knoop afhankelijk is van elke minimale doelstelling

### Vraag 3

Onderstaande figuur illustreert correct hoe je Programmeren 2 afhankelijk maakt van Programmeren 1.

![links cursussen]({% pagerepo links-cursussen.png %})

* A. ja
* B. nee
