# Bitwise operatoren in Python
Meestal tonen we getallen in decimale voorstelling, maar in de computer worden ze binair voorgesteld. Voor sommige toepassingen is het nuttig om met deze binaire voorstelling te kunnen werken. Dit gebeurt bijvoorbeeld veel in de context van IP-adressen. Om met deze voorstelling te werken, heeft Python **bitwise operatoren**. We geven ze eerst en leggen daarna uit hoe je ze gebruikt:

- `&` (bitsgewijze AND)
- `|` (bitsgewijze OR)
- `~` (bitsgewijze NOT)

Zoals je ziet, zijn er een bitsgewijze AND, OR en NOT. Je kent de gewone `and`, `or` en `not` al, maar die zijn anders. Die gebruik je met booleaanse expressies. De bitwise operatoren gebruik je normaal met getallen. De bits die die getallen voorstellen, worden behandeld als booleans.

## Voorbeeld: bitwise AND om een netmasker toe te passen
Een netmasker is een getal dat je kan combineren met een IP-adres om te weten te komen tot welk subnet dat IP-adres behoort. Door het netmasker toe te passen krijg je voor IP-adressen in hetzelfde subnet altijd hetzelfde resultaat, voor IP-adressen in verschillende subnetten krijg je verschillende resultaten (we houden hier geen rekening met privé-adresbereiken). De binaire voorstelling van een netmasker is altijd één reeks 1-bits gevolgd door één reeks 0-bits.

Het IPv4-adres 192.168.0.1 stel je in het binair als volgt voor: 11000000101010000000000000000001. Het netmasker voor een prefixlengte 24 stel je voor als 24 1-bits, gevolgd door 8 0-bits, dus 11111111111111111111111100000000. Om het netwerkadres te bekomen, moet je een bitwise AND toepassen. Dat wil zeggen: plaats de twee bitreeksen boven elkaar en vergelijk de getallen die boven elkaar staan alsof het booleans waren, waarbij 1 `True` voorstelt en 0 `False` voorstelt.

Onderstaande figuur illustreert dit:

![bitwise and]({% pagerepo bitwise-and.png %})

Om dit in Python uit te rekenen, gebruiken we de getallen die voorgesteld worden door de lange bitreeksen. Als je de bitreeksen als strings hebt, doe je dit met een extra argument voor `int`. Zo kan je `host_address = int("11000000101010000000000000000001",2)` en `netmask = int("11111111111111111111111100000000",2)` doen. Om dan het netwerkadres te tonen, doe je: `print(f"{host_address & netmask:b}")`.

## Voorbeeld: bitwise OR
Het idee is net hetzelfde als bij bitwise AND, maar een bit is 1 in het resultaat zodra minstens één van de bits er boven 1 is.

![bitwise or]({% pagerepo bitwise-or.png %})

## Bitwise NOT
De bitwise NOT van Python bespreken we voorlopig niet, omdat hij een heleboel extra technische bagage vraagt om uit te leggen. De klassieke uitleg van een bitwise NOT is dat hij 0-bits verandert in 1-bits en omgekeerd. Omwille van hoe Python getallen intern voorstelt en aan de buitenwereld toont, is het effect hiervan nogal ondoorzichtig.

Als we toch een "klassieke" bitwise NOT nodig hebben, kunnen we hem zelf nabootsen door in de stringvoorstelling alle 1-bits in 0-bits te veranderen en omgekeerd.

## Oefening
{% instructions %}

Schrijf een script met de gevraagde naam. Dit script print op twee regels de **binaire voorstelling** van volgende twee IP-adressen (zonder punten tussen, gewoon telkens een reeks bits):

- Het netwerkadres waarop host 174.38.13.222/19 is aangesloten.
  - Zet het adres en het netmasker eerst zelf om naar een bitstring. Dit mag je doen zoals je wil, ook met een online converter of met een rekenmachine. De binaire voorstellingen worden niet gegeven omdat het geen zin heeft dat je deze operatoren leert als je niet weet wat je aan het doen bent.
- Het hostadres van een machine met hostgedeelte 10111111 op het subnet 192.168.0.0/24.
