# Python lijsten
Zie [Spronck](http://www.spronck.net/pythonbook/pythonboek.pdf), 12.1 (blz. 153).

## Basisidee lijsten
Lijsten zijn, net als strings, geordende sequenties. Dat betekent dat je ook op lijsten `for` loops kan toepassen. Dat ziet er bijvoorbeeld zo uit:

```python
for element in [1,2,3]:
    print(element)
```

## Syntax
Een lijst schrijf je altijd uit zoals hierboven: met rechte haken (`[` en `]`) en met elementen die gescheiden worden door `,`. Deze elementen zijn niet altijd letterlijke uitgeschreven waarden. Het mogen allerlei expressies zijn.

Onderstaande code doet dus net hetzelfde als bovenstaande code:

```python
a = 1
for element in [a,(1+1),3]:
    print(element)
```

## Lege lijsten
Een lijst mag ook leeg zijn en dan schrijf je `[]`. Als je er dan door gaat met een `for`, gebeurt er gewoon niets.

## Lijsten zijn ook waarden
Lijsten zijn zelf waarden, dus je kan ze overal gebruiken waar je een expressie mag gebruiken. Je kan een lijst toekennen aan een variabele, bijvoorbeeld `a = [1,2,3]`. Je kan zelfs een lijst in een andere lijst zetten, bijvoorbeeld `a = [[1,2,3],[4,5,6]]`.

## Oefening
{% instructions %}
Schrijf een scriptje met de gevraagde naam dat een lijst met de oneven getallen tussen 1 en 9 aanmaakt en toekent aan een variabele `my_list`. Vervolgens doorloopt het deze lijst en print het de getallen. Dat ziet er dan zo uit:

```python
1
3
5
7
9
```
