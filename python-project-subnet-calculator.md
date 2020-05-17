# Opgave
Voor het tweede project zullen we een subnetcalculator bouwen. Dit is een script `subnetcalculator.py` dat volgende zaken doet:

1. een IPv4-hostadres aan de gebruiker vragen (in decimale notatie, zonder lengte van het subnetmasker)
2. een subnetmasker aan de gebruiker vragen (in decimale notatie, zonder lengte)
3. geldigheid van de getallen controleren
4. aantal 1-bits in het subnetmasker berekenen en tonen
5. adres van het subnet berekenen en tonen
6. wilcardmasker (dus bitsgewijze inverse van het subnetmasker) berekenen en tonen
7. broadcastadres van het subnet berekenen en tonen
8. maximaal aantal hosts in het subnet berekenen en tonen

# Stap 1: een IPv4-hostadres opvragen
Schrijf hier een hulpfunctie, `ask_for_number_sequence`, met één parameter, `message`. Deze hulpfunctie doet volgende zaken:

- Ze toont `message` aan de gebruiker.
- Ze leest in wat de gebruiker intypt als antwoord. Hier wordt verwacht dat de gebruiker een reeks getallen intypt, gescheiden door punten.
- Ze splitst de ingetypte tekst in een lijst met onderdelen, vertaalt deze onderdelen van tekst naar getallen en geeft de lijst van vertaalde onderdelen terug.

Nu kan je een IPv4-hostadres vragen via `ask_for_number_sequence(message)`. Volgende interactie zou mogelijk moeten zijn in de REPL (nadat je dit script hebt geïmporteerd, wat bijvoorbeeld kan als je de REPL opstart in de map waar het script staat):

```python
>>> subnetcalculator.ask_for_number_sequence("Wat is het IP-adres?")
Wat is het IP-adres?
> 192.168.0.1
[192, 168, 0, 1]
```

.. important::

   Je kan hier voor terugkijken naar de oefening: een IP-adres inlezen.

# Stap 2: een subnetmasker opvragen
Hier moet je niets voor toevoegen. Je kan hier ook `ask_for_number_sequence` voor gebruiken.

# Stap 3: geldigheid controleren

## Van een adres
Schrijf een hulpfunctie, `is_valid_ip_address`, met één parameter, `numberlist`. Hier wordt een lijst getallen voor verwacht. Deze hulpfunctie geeft `True` terug als volgende twee zaken gelden:

- elk getal ligt tussen 0 en 255
- de lijst bevat exact 4 getallen

In alle andere gevallen geeft de hulpfunctie `False` terug.

.. important::

   Je kan hiervoor terugkijken naar de oefening waarbij je gecontroleerd hebt of alle getallen bytes zijn (Aha: een IP-adres controleren). In die oefening werd niet gekeken of de lijst exact 4 elementen bevat, dus dat moet je nog controleren. Gebruik hiervoor `len`, zoals uitgelegd in het deeltje rond indexering van lijsten.

## Van een netmasker

### Filmpje
[![Filmpje controle netmasker]({% pagerepo youtube.png %})](https://youtu.be/Ml6iqWRw9u8)

### Uitleg in tekst

Een netmasker is geldig als het bestaat uit een doorlopende reeks 1-bits gevolgd door een doorlopende reeks 0-bits. We zullen voor het gemak toestaan dat een netmasker 32 1-bits of 32 0-bits telt (al heeft dat geen zin in het echt).

De makkelijkste manier om dit te checken is via de binaire voorstelling. Schrijf een hulpfunctie, `is_valid_netmask`, met één parameter, `numberlist`. Deze functie doet volgende zaken:

- ze controleert dat de lijst 4 getallen bevat (anders mas de functie direct `False` teruggeven)
- ze berekent de binaire voorstelling van het volledige netmasker
  - hiervoor bereken je eerst de voorstelling van elk getal als *exact* 8 bits. Zie hiervoor de uitleg rond format strings voor binaire weergave.
  - daarna plakt ze de vier voorstellingen van de getallen aan elkaar als één string, genaamd `binary_netmask`
- ze maakt een variabele, `checking_ones` aan met beginwaarde `True`
- ze doorloopt alle symbolen in `binary_netmask` en zet `checking_ones` op `False` zodra ze een 0 tegenkomt
- indien ze een 1 tegenkomt terwijl `checking_ones` al op `False` staat, geeft ze aan dat het geen geldig netmasker is
- als alle symbolen doorlopen zijn en er was geen reden om te beslissen dat het geen geldig netmasker is, is het een geldig netmasker en kan je `True` teruggeven

Je krijgt volgende code om van te vertrekken:

```python
def is_valid_netmask(numberlist):
    # ZELF DOEN: False antwoorden als numberlist niet exact 4 elementen bevat
    # ZELF DOEN: binaire voorstelling met 8 symbolen van elke byte bepalen en allemaal aan elkaar plakken
    # ZELF DOEN: noem deze binaire voorstelling binary_netmask
    checking_ones = True
    for symbol in binary_netmask:
        if checking_ones and # ZELF doen: "als we een 0 tegenkomen, zijn we geen 1'tjes meer aan het controleren"
        elif # ZELF doen: "als we een 1 tegenkomen, is het netmasker ongeldig"
    # als alle symbolen afgewerkt zijn, zijn we geen return False tegengekomen
    return True
```

# Stap 4: aantal 1-bits tellen
In de vorige stap heb je de binaire voorstelling van het netmasker berekend. Er zijn meerdere manieren om aan het aantal 1-bits te raken, maar we houden het op een simpele aanpak:

- schrijf een functie `one_bits_in_netmask` met één parameter. We verwachten dat deze ingevuld wordt met het netmasker als lijst getallen.
- deze functie converteert eerst naar de voorstelling als een string van binaire symbolen.
- daarna maakt ze een variabele `counter` aan met waarde 0
- dan gaat ze met een `for`-lus over elk symbool en controleert ze of het `"1"` is of niet
  - als het `"1"` is, verhoogt ze `counter`
- wanneer de `for`-lus afgelopen is, geeft ze de waarde van `counter` als antwoord

# Stap 5: adres van het subnet berekenen
Je krijgt het adres van het subnet door de bitwise AND van het hostadres en het netmasker te berekenen. Als je het hostadres en het netmasker voorstelt als lijsten van telkens 4 getallen (zoals wij dat doen), mag je de bitwise AND van het eerste getal uit de ene lijst en het eerste getal uit de andere lijst nemen, gevolgd door de bitwise AND van het tweede getal uit de ene lijst en de bitwise AND van het tweede getal uit de andere lijst, enzovoort. Schrijf een functie, `apply_network_mask`, met twee parameters `host_address` en `netmask` (beide lijsten getallen) die dit doet en het adres van het netwerk teruggeeft als een lijst getallen.

.. important::

   Er wordt heel gelijkaardige code getoond in het filmpje rond bitwise operatoren.

# Stap 6: wildcardmasker berekenen

## Filmpje
[![Filmpje implementatie wildcardmasker]({% pagerepo youtube.png %})](https://youtu.be/Ek2P9Nz_WUE)

## Uitleg in tekst
Het wilcardmasker is gelijkaardig aan het subnetmasker, maar het levert je niet het netwerkgedeelte van een IP-adres. Het levert je het hostgedeelte. Je verkrijgt het in principe door een bitwise NOT toe te passen op het subnetmasker.

Herinner je echter dat de bitwise NOT die Python voorziet bepaalde complicaties met zich meebrengt. Daarom converteer je hier beter de bitstring voor het netmasker zelf tot een bitstring voor het wildcardmasker (zoals voorgedaan in het filmpje op die pagina).

Schrijf een functie, `netmask_to_wilcard_mask` met één parameter (het netmasker als lijst getallen) die je het wildcardmasker teruggeeft, ook als lijst getallen.

# Stap 7: broadcastadres berekenen
Het broadcastadres krijg je door alle hostbits op 1 te zetten. Je beschikt al over het netwerkadres en het wildcardmasker. Het wildcardmasker is een adres met alle hostbits op 1 en met alle netwerkbits op 0. Dus je kan het broadcastadres krijgen via een bitwise OR van het netwerkadres en het wildcardmasker. Schrijf een functie, `get_broadcast_address`, met twee parameters `network_address` en `wildcard_mask` die dit doet en die het broadcastadres teruggeeft als een lijst getallen.

# Stap 8: maximaal aantal hosts berekenen
Een subnet heeft een bepaald maximum aantal hosts. Dit kan je makkelijk afleiden uit de lengte van het netmasker: als die lengte `L` is, is het maximum aantal hosts "2 tot de macht L, min 2". De "min 2" komt pas op het einde, omdat er één adres opzij wordt gehouden voor broadcast en één voor het netwerkadres zelf.

Schrijf een functie, `prefix_length_to_max_hosts` die als parameter een lengte van een subnetmasker heeft (voorgesteld als getal) en als resultaat het maximum aantal hosts geeft (ook als getal).

# Alles samen
Zorg eerst dat al bovenstaande functies werken. Je kan tussendoor al checken via de knop. De oefening als geheel zal wel geweigerd worden, maar als je een fout krijgt in stap 5 weet je bijvoorbeeld al dat stap 1 tot 4 in orde zijn.

Zorg ten slotte dat iemand je bestand kan uitvoeren en volgende interactie kan krijgen:

```text
Wat is het IP-adres?
> 192.168.0.191
Wat is het subnetmasker?
> 255.255.255.0
IP-adres en subnetmasker zijn geldig.
De lengte van het subnetmasker is 24.
Het adres van het subnet is 192.168.0.0.
Het wildcardmasker is 0.0.0.255.
Het broadcastadres is 192.168.0.255.
Het maximaal aantal hosts op dit subnet is 254.
```

Als een van de ingevoerde waarden niet geldig is, wordt het script stopgezet na de controle. Gebruik hiervoor `sys.exit(0)`.

```text
Wat is het IP-adres?
> 1920.1680.0.1910
Wat is het subnetmasker?
> 255.255.255.0
IP-adres en/of subnetmasker is ongeldig.
```

.. warning::

   Hier volgt nog een automatische controle. **Momenteel wordt elke inzending geweigerd, dus het heeft geen zin de knop te gebruiken.** Volg wel al zo goed mogelijk de naamgeving en voorbeeldinteractie. Dan zal je project makkelijker een automatische controle doorstaan wanneer die er is.
