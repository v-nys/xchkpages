# Functies met keyword arguments
Het is niet altijd makkelijk op het zicht te zien wat alle argumenten in een functieoproep betekenen. Sommige functies en methodes kan je oproepen met "keyword arguments". Dit zijn argumenten waarvan je uitdrukkelijk de rol aangeeft.

Bijvoorbeeld, de methode `str.split` kan je zo oproepen:

```python
"1,2,3".split(",")
```

Maar je kan ook dit doen:

```python
"1,2,3".split(sep=",")
```

Dit is omdat de tekenreeks die je gebruikt om substrings af te bakenen [volgens de documentatie](https://docs.python.org/3/library/stdtypes.html?highlight=split#str.split) `sep` genoemd wordt.

Volgens diezelfde documentatie kan je ook het maximum aantal verkregen substrings beperken met een `maxsplit` keyword argument. Bijvoorbeeld: `"1,2,3,4,5,6".split(sep=",",maxsplit=3)` levert `["1","2","3","4,5,6"]` omdat er maar drie keer gesplitst mag worden.

Het grote voordeel van keyword arguments is dat je de volgorde niet hoeft te respecteren. Je kan dus net zo goed dit schrijven: `"1,2,3,4,5,6".split(maxsplit=3,sep=",")`.
