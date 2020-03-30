# Opgave
Deze inhoud is nog niet volledig af, maar als je nu al hier bent geraakt, kan je je waarschijnlijk wel redden.

Voor het tweede project zullen we een subnetcalculator bouwen. Dit is een script `subnetcalculator.py` dat volgende zaken doet:

1. een IPv4-hostadres aan de gebruiker vragen (in decimale notatie, zonder lengte van het subnetmasker)
2. een subnetmasker aan de gebruiker vragen (in decimale notatie, zonder lengte)
3. geldigheid van de getallen controleren
4. aantal 1-bits in het subnetmasker berekenen en tonen
5. adres van het subnet berekenen en tonen
6. broadcastadres van het subnet berekenen en tonen
7. maximaal aantal hosts in het subnet berekenen en tonen
8. wilcardmasker (dus bitsgewijze inverse van het subnetmasker) berekenen en tonen

# Concepten toepassen
- Een IP-adres of subnetmasker inlezen doe je zoals in de eerdere knopen, waarbij we een IP-adres in tekstvorm hebben omgezet naar een lijst met getallen.
- Een IP-adres controleren doe je door na te gaan of elk getal aanvaard zou worden door onze eerdere functie `is_byte`.
- Een subnetmasker doe je door na te gaan of de binaire voorstelling van een getal begint met een reeks 1'tjes en gevolgd wordt door een reeks 0'en.
  - Ik voeg hier nog een aparte knoop voor toe zodat de taak wat beter verteerbaar is.
  - Schrijf alvast een aparte methode: `is_valid_subnet_mask` die een lijst van getallen als argument verwacht
- Maximaal aantal hosts kan je bepalen uit de lengte van het subnetmasker.
  - Schrijf alvast een aparte methode: `subnet_mask_length` die een lijst van getallen als argument verwacht
- Voor het broadcastadres heb je bitwise operaties nodig. Dit zijn `&` (voor `AND`), `|` (voor `OR`) en `~` (voor `NOT`).
  - Ik voeg hier nog een aparte knoop voor toe.
