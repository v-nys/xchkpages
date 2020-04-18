# Opgave
Voor het tweede project zullen we een subnetcalculator bouwen. Dit is een script `subnetcalculator.py` dat volgende zaken doet:

1. een IPv4-hostadres aan de gebruiker vragen (in decimale notatie, zonder lengte van het subnetmasker)
2. een subnetmasker aan de gebruiker vragen (in decimale notatie, zonder lengte)
3. geldigheid van de getallen controleren
4. aantal 1-bits in het subnetmasker berekenen en tonen
5. adres van het subnet berekenen en tonen
6. broadcastadres van het subnet berekenen en tonen
7. maximaal aantal hosts in het subnet berekenen en tonen
8. wilcardmasker (dus bitsgewijze inverse van het subnetmasker) berekenen en tonen

# Stap 1: een IPv4-hostadres opvragen
Schrijf hier een hulpfunctie, `ask_for_number_sequence`, met één parameter, `message`. Deze hulpfunctie doet volgende zaken:

- Ze toont `message` aan de gebruiker.
- Ze leest in wat de gebruiker intypt als antwoord. Hier wordt verwacht dat de gebruiker een reeks getallen intypt, gescheiden door punten.
- Ze splitst de ingetypte tekst in een lijst met onderdelen, vertaalt deze onderdelen van tekst naar getallen en geeft de lijst van vertaalde onderdelen terug.

Nu kan je een IPv4-hostadres vragen via `ask_for_number_sequence(message)`. Volgende interactie zou mogelijk moeten zijn in de REPL:

```python
>>> subnetcalculator.ask_for_number_sequence("Wat is het IP-adres?")
Wat is het IP-adres?
> 192.168.0.1
[192, 168, 0, 1]
```

# Stap 2: een subnetmasker opvragen
Hier moet je niets voor toevoegen. Je kan hier ook `ask_for_number_sequence` voor gebruiken.

# Stap 3: geldigheid controleren

## Van een adres
Schrijf een hulpfunctie, `is_valid_ip_address`, met één parameter, `numberlist`. Hier wordt een lijst getallen voor verwacht. Deze hulpfunctie geeft `True` terug als volgende twee zaken gelden:

- elk getal ligt tussen 0 en 255
- de lijst bevat exact 4 getallen

In alle andere gevallen geeft de hulpfunctie `False` terug.

## Van een netmasker
Een netmasker is geldig als het bestaat uit een doorlopende reeks 1-bits gevolgd door een doorlopende reeks 0-bits. We zullen voor het gemak toestaan dat een netmasker 32 1-bits of 32 0-bits telt (al heeft dat geen zin in het echt).

De makkelijkste manier om dit te checken is via de binaire voorstelling. Schrijf een hulpfunctie, `is_valid_netmask`, met één parameter, `numberlist`. Deze functie doet volgende zaken:

- ze controleert dat de lijst 4 getallen bevat
- ze berekent de binaire voorstelling van het volledige netmasker
  - hiervoor bereken je eerst de voorstelling van elk getal als *exact* 8 bits
  - daarna plakt ze de vier voorstellingen van de getallen aan elkaar als één string, genaamd `binary_netmask`
- ze maakt een variabele, `checking_ones` aan met beginwaarde `True`
- ze doorloopt alle symbolen in `binary_netmask` en zet `checking_ones` op `False` zodra ze een 0 tegenkomt
- indien ze een 1 tegenkomt terwijl `checking_ones` al op `False` staat, geeft ze aan dat het geen geldig netmasker is
- als alle symbolen doorlopen zijn en er was geen reden om te beslissen dat het geen geldig netmasker is, is het een geldig netmasker

# Stap 4: aantal 1-bits tellen
TODO

# Stap 5: adres van het subnet berekenen
TODO

# Stap 6: broadcastadres berekenen
TODO

# Stap 7: maximaal aantal hosts berekenen
TODO

# Stap 8: wildcardmasker berekenen
TODO

# Alles samen
TODO
