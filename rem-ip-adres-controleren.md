# Remediëring: een IP-adres controleren

## Probleemstelling
We willen niet dat onze scripts crashen zonder duidelijke foutboodschap wanneer de gebruiker foute invoer levert. Om dat te vermijden, kunnen we extra controles toevoegen op basis van wat voor invoer we verwachten.

## Opgave
Schrijf een script met de gevraagde naam (zie beneden in de automatische instructies). Dit script bevat een functie, `bestaat_uit_bytes`, met één parameter. De gebruiker moet deze functie oproepen met een string als argument. Deze string bestaat uit decimale getallen, gescheiden door punten (zoals een IPv4-adres), maar het mogen meer of minder dan 4 getallen zijn. De functie vertelt dan of elk van deze getallen een byte is of niet, d.w.z. tussen 0 en 255 valt. Zodra minstens één getal buiten dit bereik valt, is het resultaat `False`.

.. important::

   Je mag wel veronderstellen dat de gebruiker het gevraagde formaat respecteert. Hij kan alleen foute getallen intypen, maar geen letters,... Dat is iets geavanceerder.

## Voorbeeldinteractie

Een interactie uit de REPL. `>>>` betekent dat iets als een instructie in de REPL wordt ingetypt:

```
>>> bestaat_uit_bytes("192.168.0.1")
True
>>> bestaat_uit_bytes("1080.168.0.1")
False
>>> bestaat_uit_bytes("")
True
>>> bestaat_uit_bytes("9.9.9.9.9.9.9.9.9")
True
>>> bestaat_uit_bytes("100.100.100.1000000")
False
```

## Aanpak
- Start met een variabele die je voorlopig antwoord bijhoudt. Als je nog geen enkel element bent tegengekomen, veronderstel je dat het antwoord `True` is.
- Je kan je functie `is_byte` herbruiken om elk onderdeeltje te controleren.
  - Breek het stuk tekst op in een lijst van elementen.
  - Ga met een `for`-lus door deze lijst elementen.
  - Als je er eentje tegenkomt dat géén byte is, weet je dat het totale antwoord sowieso `False` is.
- Als je alle elementen hebt doorlopen, weet je dat je "voorlopig" antwoord definitief is.

## Automatische controle
{% instructions %}
