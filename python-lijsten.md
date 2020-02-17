# Python lijsten
Zie [Spronck](http://www.spronck.net/pythonbook/pythonboek.pdf), 12.1 (blz. 153).

Lijsten zijn, net als strings, geordende sequenties. Dat betekent dat je ook op lijsten `for` loops kan toepassen. Dat ziet er bijvoorbeeld zo uit:

```python
for element in [1,2,3]:
    print(element)
```

Je kan meer dan alleen getallen bijhouden in lijsten. Je kan er om het even welk type data in kwijt. Je kan zelfs lijsten in andere lijsten bijhouden (al overdrijf je best niet).

## Oefening
{% instructions %}
Schrijf een scriptje, `print-odd-list.py`, dat een lijst met de oneven getallen tussen 1 en 9 aanmaakt en toekent aan een variabele `my_list`. Vervolgens doorloopt het deze lijst en print het de getallen. Dat ziet er dan zo uit:

```python
1
3
5
7
9
```
