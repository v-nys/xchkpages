# Remediëring: input verzamelen

## Probleemstelling
Als we een script schrijven, moet de gebruiker soms zelf beslissen wanneer hij klaar is met het ingeven van data. Zo zou hij bijvoorbeeld een lijst van IP-adressen kunnen intypen die verder in het script allemaal gecontacteerd zullen moeten worden.

## Opgave
Schrijf een script met de gevraagde naam (zie beneden in de automatische instructies). Dit script bevat een functie, `verzamel_ip_adressen` (zonder parameters). Wanneer deze functie wordt opgeroepen, vraagt ze de gebruiker om een IP-adres in te typen. Als de gebruiker een adres intypt, wordt dit toegevoegd aan een lijst met reeds ingetypte resultaten. Als de gebruiker meteen op enter duwt en niets intypt, levert de functie haar resultaat, namelijk alle resultaten die tot dan toe verzameld waren.

.. important::

   Je hoeft hier niet te controleren of het IP-adres geldig is. Als een gebruiker dus `"blablabla"` intypt, mag die string in de lijst met ingetypte IP-adressen terecht komen.

## Voorbeeldinteractie

Een interactie uit de REPL:

.. warning::

   Het laatste `>`-symbool wordt niet gevolgd door tekst. De gebruiker duwt meteen op enter. Daarna zie je het resultaat omdat dit in de RE**P**L is, waar resultaten van functies sowieso geprint worden (tenzij ze `None` zijn).

```
Wat is het volgende IP-adres? Duw meteen op enter om af te sluiten.
> 192.168.0.1
Wat is het volgende IP-adres? Duw meteen op enter om af te sluiten.
> 17.17.17.17
Wat is het volgende IP-adres? Duw meteen op enter om af te sluiten.
> 255.255.255.255
Wat is het volgende IP-adres? Duw meteen op enter om af te sluiten.
>
['192.168.0.1', '17.17.17.17', '255.255.255.255']
```

Een tweede interactie, die toont wat gebeurt als je geen enkel adres intypt:

```
Wat is het volgende IP-adres? Duw meteen op enter om af te sluiten.
>
[]
```

## Aanpak
- Je wil een bepaalde handeling herhalen, dus je hebt een lus nodig.
  - Je weet niet op voorhand hoe vaak je deze handeling zal herhalen, dus een `while`-lus is hier geschikt.
- Zelfs als de gebruiker geen enkel adres intypt, krijg je een lijst terug. Declareer daarom een variabele die een lege lijst bevat **voor** de lus begint.
  - De lijst is het **resultaat** van de functie. Andere code moet deze functie kunnen oproepen en dan iets kunnen doen met deze lijst, dus het volstaat niet om de lijst af te printen.
- De lus wordt herhaald **totdat de gebruiker niets intypt**. Dat is hetzelfde als **zo lang de gebruiker wel iets intypt**.
- Experimenteer even in de REPL. Wat gebeurt er als je `input("blabla")` uitvoert en meteen op enter duwt? Maak daar gebruik van om je lusvoorwaarde te schrijven.

## Automatische controle
{% instructions %}
