# Lijstindexering basis
Lijsten in Python zijn reeksen elementen. Als je een element uit een lijst wil halen, schrijf je die lijst (of iets dat die lijst oplevert, zoals een variabele), gevolgd door rechte haken, gevolgd door een **index**, dus een nummer van het element (of iets dat een getal oplevert wanneer je het uitrekent, bijvoorbeeld `2 + 1`).

Bijvoorbeeld:

```python
mijn_lijst=["hello","world","how","are","you","?"]
print(mijn_lijst[3])
```

Dit zal `are` tonen op het scherm. Waarom precies dat element? Omdat we beginnen te tellen vanaf 0, dus `mijn_lijst[0]` is `"hello"`, `mijn_lijst[1]` is `"world"`, enzovoort.

Je mag geen getal gebruiken dat zo groot is als de totale lengte van de lijst (of groter), want dat levert een fout. Bijvoorbeeld, `mijn_lijst[6]` gebruiken zal je een `IndexError` opleveren.

Je kan lijstelementen net gebruiken zoals je de elementen op zich zou gebruiken. Bijvoorbeeld:

```python
print(mijn_lijst[0] + " " + mijn_lijst[1])
```

# Oefening
Neem `mijn_lijst` over uit bovenstaande code en zet in het bestand met de gevraagde naam. Schrijf daar onder één oproep van `print` die de volledige zin hierboven juist uitprint op één regel. Je *moet* daarbij de elementen uit de lijst gebruiken om de zin te vormen.

Als je je programma uitvoert, zou dus `hello world how are you?" op het scherm moeten verschijnen.
