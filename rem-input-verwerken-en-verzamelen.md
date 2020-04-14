# Remediëring: input verwerken en verzamelen

## Probleemstelling
Mensen zijn flexibeler in het verwerken van informatie dan machines. Wij blokkeren niet wanneer we een schrijffout tegenkomen, computers blokkeren wel vaak bij een kleine typfout. Als we wat meer flexibiliteit verwachten, kunnen we de invoer eerst opkuisen, bijvoorbeeld door extra whitespace te verwijderen.

## Opgave
Breid je script dat IP-adressen verzamelt uit, zodat de gebruiker ook whitespace voor en na (maar niet in) de IP-adressen mag intypen en zodat het programma afsluit zodra er alleen maar whitespace wordt ingetypt.

.. important::

   Je hoeft hier nog steeds niet te controleren of het IP-adres geldig is. Als een gebruiker dus `"blablabla"` intypt, mag die string in de lijst met ingetypte IP-adressen terecht komen.

## Voorbeeldinteractie

Een interactie uit de REPL:

.. warning::

   Het laatste `>`-symbool wordt mogelijk gevolgd door een of andere hoeveelheid whitespace, maar dat zie je niet op de interactie.

```
Wat is het volgende IP-adres? Duw meteen op enter om af te sluiten.
>       192.168.0.1  
Wat is het volgende IP-adres? Duw meteen op enter om af te sluiten.
>                    17.17.17.17
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
- Whitespace verwijderen doe je met `strip`. Er wordt verondersteld dat je dit onderwerp al hebt behandeld.
- De rest omvat alleen kleine aanpassingen aan de versie van dit script die de invoer niet eerst verwerkt.

## Automatische controle
{% instructions %}
