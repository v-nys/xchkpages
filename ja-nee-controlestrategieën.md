# Ja/Nee strategieën

De simpelste controlestrategieën die er zijn, zijn strategieën die domweg alles aanvaarden of alles weigeren. Beide hebben nuttige toepassingen.

## Strategieën die alles aanvaarden

Deze kan je voor twee zaken gebruiken:

1. Als je content hebt waar geen opdracht bij hoort. Ik raad aan zo veel mogelijk zinvolle opdrachten te bedenken, maar een node kan puur informatief zijn (bijvoorbeeld een formularium of cheat sheet of een stel afspraken voor de cursus).
2. Een node kan bedoeld zijn om toegang te geven tot een volgende cursus. Zo kan er een node zijn die de minimale doelstellingen voor "Programmeren 1" als dependency heeft. Als de student die node, "minimale doelstellingen Programmeren 1", afwerkt, kan bijvoorbeeld toegang gegeven worden tot vervolgcursussen. Dit vermijdt dat de vervolgcurssusen afhankelijk worden van elke individuele doelstelling voor "Programmeren 1".

## Strategieën die alles weigeren

Deze kan je voor twee zaken gebruiken:

1. Als je content hebt die nog niet af is of waarvoor de opdracht nog niet af is. Zo lang er niet efficiënt verbeterd kan worden, verhinder je vaak liever dat studenten iets inzenden.
2. Voor het linken van verschillende cursussen. Omdat een node niet tot een specifieke cursus behoort en omdat toegankelijk wordt zodra aan alle dependencies in minstens één cursus voldaan is, kan je moeilijk een node "minimale doelstellingen Programmeren 1" aan het begin van "Programmeren 2" zetten. Dan zou de student aan alle vereisten (namelijk: géén vereisten) voldoen om de cursus als voltooid te markeren. Je kan dit oplossen door in Programmeren 2 een niet-oplosbare "dummy" node als dependency van "minimale doelstellingen Programmeren 1" op te nemen.

## Multiple choice opdracht

{% instructions %}

### Vraag 1

Als je niet toegankelijk wil maken, dan:

* A. koppel je er een strategie aan die alles weigert
* B. introduceer je een dummy dependency gekoppeld aan een strategie die alles weigert

### Vraag 2

Als je één cursus wil aanduiden als vereiste voorkennis voor een andere cursus, dan:

* A. contacteer je mij (Vincent)
* B. voeg je een node toe met een strategie die alles aanvaardt, afhankelijk van elke minimale doelstelling
* C. maak je de tweede cursus waarin de eerste knoop afhankelijk is van elke minimale doelstelling

### Vraag 3

Onderstaande figuur illustreert correct hoe je Programmeren 2 afhankelijk maakt van Programmeren 1.

* A. ja
* B. nee
