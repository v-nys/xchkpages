# Bitwise operatoren in Python

.. warning::

   Deze inhoud is nog niet volledig. Je kan de oefening ook nog niet afwerken.

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

{% pagerepo bitwise-or.png %}

## Bitwise NOT
Een bitwise NOT keert de waarde van elke bit om. Dus bijvoorbeeld 11000000 in het binair (192 in het decimaal) wordt dan 00111111 in het binair (63 in het decimaal).

## Oefening
{% instructions %}

- netmasker van x bits toepassen op ... -> i.e. python gebruiken om netwerkadres te bekomen
  - mag decimaal naar binair vertalen met rekenmachine
- netwerkadres 192.168.0.0/24 en hostgedeelte 191 combineren tot uiteindelijke adres 192.168.0.191
