# Aha: IP-adressen inlezen
Je kent genoeg Python om een nuttige taak uit te voeren voor netwerkbeheerders.

## Oefening
{% instructions %}
Schrijf een script met de gevraagde naam en met daarin een functie `read_ips()` zonder parameters. Deze functie opent een bestand (in dezelfde map) met naam `ips.txt`. Op elke regel van dit bestand staat een IPv4-adres in decimale notatie, dus bijvoorbeeld `192.168.0.1`. De functie zet de inhoud van dit bestand om naar een lijst van lijsten van getallen.

Veronderstel bijvoorbeeld dat ik volgend bestand `ips.txt` heb:

```text
192.168.0.1
4.9.13.7
200.200.200.200
```

Dan produceert een oproep van `read_ips()` volgend resultaat: `[[192,168,0,1],[4,9,13,7],[200,200,200,200]]`.

### Tips:

1. Maak in deze functie eerst een variabele met als inhoud een lege lijst.
2. Doorloop elke regel van de file `ips.txt` zoals je geleerd hebt over `readlines`.
3. Zet elke regel om naar een IP-adres in lijstformaat zoals je geleerd hebt in de oefening rond het inlezen van individuele IP-adressen.
4. Voeg na omzetting toe aan de variabele die je in stap 1 hebt aangemaakt.

.. important::

   Je hoeft nog geen rekening te houden met de geldigheid van deze IP-adressen. Er mogen getallen groter dan 255 of kleiner dan 0 voorkomen en er mogen meer of minder dan vier bytes na elkaar voorkomen op een regel. Die zaken handelen we later af.
