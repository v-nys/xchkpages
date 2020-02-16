# Variabelen in Python
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
