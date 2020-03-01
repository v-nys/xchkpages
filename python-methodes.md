# Methodes
Naast functies zijn er ook methodes. In Python zijn methodes eigenlijk gewoon een syntactische variatie op functies, maar ze komen enorm veel voor, dus het verschil is belangrijk.

Net als functies zijn methodes herbruikbare stukjes code, maar de vorm is anders. Voor een functieoproep schrijf je eerst de naam van de functie en vul je dan de parameters in. Een methode roep je op een gelijkaardige manier op, maar je schrijft eerst een expressie waar de methode sterk aan gelinkt is.

Bijvoorbeeld, als je expressie de tekst `"aBC"` is en je wil dezelfde tekst in kleine letters, dan kan je schrijven: `"aBC".lower()`. De returnwaarde van de **methode** `lower` is dezelfde tekst waarop je de methode hebt toegepast, maar dan in kleine letters.

Ook methodes kunnen argumenten hebben. Bijvoorbeeld: `"aBC".replace("B","d")` heeft als returnwaarde `"adC"`.

.. important::

   Opnieuw: het verschil zit hem in Python eigenlijk alleen in de vorm. Bij methodes schrijf je de data waar het echt om gaat **eerst**, gevolgd door een punt, gevolgd door iets dat er net zo uitziet als de oproep van een functie.

## Wanneer methodes en wanneer functies?
Meer dan functies zijn methoden vaak gekoppeld aan specifieke datatypes, maar er is niet echt een harde regel rond wanneer je beter een functie schrijft en wanneer beter een methode. Zeker in Python is dit zo, omwille van de flexibiliteit van data in deze taal. Lig er voorlopig niet van wakker en gebruik wat voor jou werkt.

{% instructions %}
