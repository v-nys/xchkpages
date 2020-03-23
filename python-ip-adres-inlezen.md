# Aha: een IP-adres inlezen uit een file
Je kent genoeg Python om een nuttig bouwsteentje te schrijven voor netwerkbeheerders.

## Oefening
{% instructions %}

Schrijf een script met de gevraagde naam met daarin een functie `read_ip(line)`. De `line` die aan deze functie zal worden meegegeven is een string die een IPv4-adres in decimale notatie bevat (zonder prefixlengte). Mogelijke waarden voor `line` zijn dus bijvoorbeeld `"192.168.0.1"` of `"255.255.255.255"`.

Het resultaat is een lijst met de getallen die in het IP-adres voorkomen. Let wel op: het moeten de "getalversies" zijn van wat in de string voorkwam. Dus `read_ip("192.168.0.1")` moet je `[192,168,0,1]` leveren en niet `["192","168","0","1"]`!

### Tip: aanpak

- splits eerst de string in vier stukken
- maak een variabele die wijst naar een nieuwe, lege lijst
- doorloop de lijst met daarin de vier stukken
- voeg elk stuk toe aan de lijst waar je variabele naar wijst, maar doe dat pas nadat je hebt omgezet van string naar getal

.. important::

   Het maakt hier niet uit wat je functie doet wanneer er een ongeldige invoerstring wordt gegeven (bijvoorbeeld een string met vijf bytes in plaats van vier).
