# Binaire getallen inlezen
Meestal werken we met de decimale voorstelling van getallen, maar je kan ook werken met een andere voorstelling. Wanneer we iets doen rond computernetwerken, is het bijvoorbeeld heel normaal om te werken met de binaire voorstelling. Je kan dus ook deze voorstelling van getallen inlezen, maar je moet wel vermelden dat het om de binaire voorstelling gaat.

## Voorbeeld
Volgende code zal `True` op de console afprinten:

```python
number = int("1010101",2) # hier maken we duidelijk dat het om de binaire voorstelling gaat
print(number == 85) # hier staat gewoon 85 zonder iets bij, dus dit is de decimale voorstelling
```

De tweede parameter van de `int`-functie (`2`) geeft aan dat we het getal niet als een decimaal getal willen interpreteren, maar als een binair getal. Met andere woorden: als je de parameter weglaat, is het alsof je `10` schrijft.

.. warning::

   We spreken soms over "binaire getallen", maar eigenlijk zijn er alleen "binair voorgestelde getallen". In de machine wordt alles *sowieso* binair opgeslagen, hoe je het ook hebt ingelezen. En normaal wordt alles dan weer decimaal getoond, tenzij je aangeeft dat het anders moet. Zo zou `print(number)` in het voorbeeld boven gewoon `85` op het scherm tonen.

## Oefening
{% instructions %}
