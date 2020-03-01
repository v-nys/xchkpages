# Zelf functies schrijven

## Motivatie
Zie Spronck, 8.1 (blz. 95 en 96).

## Syntax
De syntax om zelf te beschrijven **hoe een functie werkt** is als volgt:

```
def <functie_naam>(<parameter_lijst>):
    <acties>
```

Dit is de **definitie** van de functie. Dit is iets heel anders dan een **oproep** van de functie. Wanneer je een functie definieert, zeg je hoe ze werkt. Ze wordt daarom niet meteen uitgevoerd. Neem bijvoorbeeld een script `test.py` met daarin deze code:

```python
def say_hello(name):
    print("Hello, " + name + "!")
```

Als je dit script uitvoert, gebeurt er niets. Je hebt wel gezegd hoe `say_hello` werkt, maar je hebt het niet gebruikt. Als je de functie wil gebruiken, moet je ze oproepen, net zoals de functies die we eerder al hebben gebruikt. Bijvoorbeeld:

```python
def say_hello(name):
    print("Hello, " + name + "!")

say_hello("Vincent")
```

## returnwaarde
Indien je functie een resultaat geeft, moet je het sleutelwoord `return` gebruiken, gevolgd door het "antwoord" dat je functie produceert. Als je dit niet doet, is het alsof je functie eindigt met `return None`.

.. warning::

   Let op het gebruik van indentatie. Ook voor functies is deze van belang.

## Oefening
{% instructions %}

Definieer in het gevraagde bestand een functie, `is_byte`, met één parameter, die bepaalt of de waarde voor die parameter tussen `0` en `255` ligt. Schrijf deze functie zodat een oproep ervan een "vraag" is waarop ook een "antwoord" wordt gegeven.
