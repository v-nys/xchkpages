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

Dit is omdat de tekenreeks die je gebruikt om substrings af te bakenen [volgens de documentatie](https://docs.python.org/3/library/stdtypes.html?highlight=split#str.split) `sep` genoemd wordt. Je herkent `sep` als naam van een keyword argument omdat (in de documentatie voor `split`) `sep` gevolgd wordt door `=None`. Dit betekent dat, als je geen waarde voor `sep` meegeeft, de waarde `None` gebruikt wordt. Je mag ook andere standaardwaarden instellen (bijvoorbeeld `maxsplit` wordt gevolgd door `=-1`).

Volgens diezelfde documentatie kan je ook het maximum aantal verkregen substrings beperken met een `maxsplit` keyword argument. Bijvoorbeeld: `"1,2,3,4,5,6".split(sep=",",maxsplit=3)` levert `["1","2","3","4,5,6"]` omdat er maar drie keer gesplitst mag worden.

Het grote voordeel van keyword arguments is dat je de volgorde niet hoeft te respecteren. Je kan dus net zo goed dit schrijven: `"1,2,3,4,5,6".split(maxsplit=3,sep=",")`.

## Keyword argumenten en gewone argumenten combineren
Je mag keyword argumenten combineren met gewone argumenten, **maar** je moet eerst de gewone argumenten uitschrijven en daarna pas de keyword argumenten. Je mag ook het keyword achterwege laten, zolang je de volgorde in de documentatie respecteert.

Om die reden mag je `"1,2,3".split(",")` schrijven, maar niet `"1,2,3".split(maxsplit=1,",")`. In dat laatste geval schrijf je immers een keyword argument voor een gewoon argument.

Je mag wel `"1,2,3".split(",",1)` schrijven, omdat hier de volgorde van de argumenten gerespecteerd wordt en omdat de keywords niet verplicht zijn. Ze zijn echter wel zeer sterk aan te raden.

## Oefening
{% instructions %}

1. Welk van onderstaande functies en methodes heeft volgens [de documentatie](https://docs.python.org/3/library/stdtypes.html) minstens een keyword argument?
   a. `float.fromhex`
   b. `sort`
   c. `str.endswith`
   d. `str.format_map`
2. Welk van onderstaande oproepen mag je volgens [de documentatie van `datetime`](https://docs.python.org/3/library/datetime.html) **niet** schrijven, als `my_date` een `datetime`-object voorstelt?
   a. `my_date.replace(2020,3,10,16)`
   b. `my_date.replace(year=2020,month=3,day=10,hour=16)`
   c. `my_date.replace(year=2020,hour=3,month=10,day=16)`
   d. `my_date.replace(hour=3,month=10,day=16,2020)`
   e. `my_date.replace(2020,hour=3,month=10,day=16)`
