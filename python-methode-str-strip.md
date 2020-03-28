# strip

## Filmpje
[![Filmpje strip](https://i9.ytimg.com/vi/twnAT5DmJVY/mq1.jpg?sqp=CImm7fMF&rs=AOn4CLDNZxPQ1P2iyT9WNRGGYPAIQvUpXQ)](https://youtu.be/tLr5e5EcBr8)

Wanneer we uit files lezen, treffen we vaak overbodige whitespace aan rond de interessante content. Dat kan zijn omdat een text editor automatisch een lege witregel toevoegt om het einde, of omdat we onze file inlezen op een manier die een `"\n"` aan het einde van elke regel zet.

Dit kan problematisch zijn als we een stukje code hebben dat geen rekening houdt met de aanwezigheid van deze whitespace. Je kan whitespace aan de uiteindes van een stuk tekst (d.w.z. de linkerkant en rechterkant) dan ook wegwerken met de methode `.strip()`.

Bijvoorbeeld: `"     hello, world!    ".strip()` heeft als returnwaarde `"hello, world!"`. Dezelfde string, maar geen whitespace langs links of rechts. Het hoeft niet om spaties te gaan. Ook `"\thello, world!\n".strip()` heeft als returnwaarde `"hello, world!"`.

.. warning::

   Enkel de whitespace langs links en rechts wordt verwijderd! `"hello,         world!"` blijft onveranderd, omdat de whitespace zich tussenin stukken bevindt die geen whitespace zijn!

## Oefening
{% instructions %}
