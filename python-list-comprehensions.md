# List comprehensions
Het valt regelmatig voor dat we een lijst met waarden hebben en deze willen omzetten in een lijst met andere waarden. Veronderstel bijvoorbeeld dat we een lijst met gehele getallen, `integer_list` hebben en deze willen omzetten naar `odd_even_list`, waarin we alleen bijhouden of een getal oneven (`False`) of even (`True`) is. We kunnen dat als volgt doen:

```python
odd_even_list = []
for number in integer_list:
    odd_even_list.append(number / 2 == number // 2)
```

Omdat dit zo vaak voorkomt, is er een speciale syntax die je hetzelfde laat doen:

```python
odd_even_list = [(number / 2 == number // 2) for number in integer_list]
```

Merk de aanwezigheid van `for ... in ...` op. We schrijven **voor** elk element **in** onze inputlijst een expressie. Door die expressie uit te werken, verkrijgen we een outputelement. Alle expressies uitwerken levert ons een outputlijst met even veel elementen als de inputlijst.

Een tweede voorbeeld, waarbij we enkel geïnteresseerd zijn in de eerste letter van elke naam in de lijst `names`:

```python
# [0] na een string betekent "de eerste letter van die string"
first_letter_list = [name[0] for name in names]
```

## Oefening
{% instructions %}

## Opmerkingen
List comprehensions worden ook behandeld in Spronck (onderdeel 12.8, blz. 165-166). De voorbeelden zijn nuttig, maar we zijn het niet eens met Spronck dat list comprehensions enkel dienen om te laten zien hoe goed je Python beheerst. Eens je ze gewoon bent, lezen ze vlotter dan een constructie met `append` zoals boven gegeven. Je zal ze ook vaak tegenkomen in code buiten deze cursus en alleen daarvoor is het de moeite om ze te begrijpen. We erkennen wel dat je niet alles dat je met een list comprehension **kan** schrijven ook met een list comprehension **hoeft te** schrijven.
