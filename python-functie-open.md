# `open` voor leestoegang
Met de functie `open()` open je een bestand om te lezen of te schrijven.

## Syntax
Basisgebruik van `open()` ziet er als volgt uit:

```python
fh = open('myfile.txt')
# hier gebruik je methodes van `fh` om iets te doen met de inhoud
```

De tekst `"myfile.txt"` verwijst (indien je geen instellingen wijzigt) naar een bestand in de map waarin je `python` hebt opgestart. Dit heet een **relatief pad**. Het is nuttig om meer over paden te leren, maar dat is voor een ander stuk leerstof.

.. warning::

   Bestanden worden standaard dus opgezocht ten opzichte van de plaats waar je `python` hebt opgestart, **niet** ten opzichte van het script waarin de `open`-instructie voorkomt!

## Betekenis
De returnwaarde van `open` (wat we hier aan `fh` toekennen) is een "file object". Met bovenstaande syntax geeft dit object je leestoegang tot het tekstbestand. Met andere woorden: je script kan de tekst in het bestand lezen. Je doet dit door methodes van het file object op te roepen. Een voorbeeld daarvan zou zijn: `fh.read()`. Dit zou je de hele inhoud van `myfile.txt` opleveren als één lange string tekst.

{% instructions %}
