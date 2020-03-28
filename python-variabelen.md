# Variabelen in Python

## Filmpje
![Filmpje variabelen] (https://youtu.be/fwG0q2v0HTQ)

Zie [Spronck](http://www.spronck.net/pythonbook/pythonboek.pdf), 4.1 tot en met 4.2.1.

Let op: een variabele houdt inderdaad de positie van een waarde in het geheugen bij, **maar** er is niets dat verbiedt dat twee variabelen dezelfde positie bijhouden. Je ziet een variabele best als een naamkaartje voor een waarde in het geheugen. Dat naamkaartje kan losgemaakt worden en kan ergens anders gehangen worden. Volgende code toont dit aan:

```python
a = 1654846
b = a # twee naamkaartjes hangen aan dezelfde waarde
print(a)
print(b)
b = 4658 # een naamkaartje wordt verplaatst
print(a)
print(b)
```

Je hoeft geen zuivere waarde toe te kennen aan een variabele. Je mag ook een expressie toekennen. Die wordt uitgerekend voor ze in het geheugen wordt opgeslagen.

# Oefening
{% instructions %}

Reken op een overzichtelijke manier het aantal seconden per week uit. Schrijf het gevraagde Python bestand en maak daarin volgende variabelen aan:

- `seconden_per_minuut` met waarde `60`
- `minuten_per_uur` met waarde `60`
- `uren_per_dag` met waarde `24`
- `dagen_per_week` met waarde `7`
- `boodschap` met waarde `"Er zijn zo veel seconden in een week:"`
- `berekening` met het aantal seconden in een week, op basis van je andere variabelen

Print aan het einde `boodschap` af, gevolgd door `berekening`. Beide mogen op een aparte regel getoond worden.
