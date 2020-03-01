# `open` voor leestoegang
Met de functie `open()` open je een bestand om te lezen of te schrijven.

## Syntax
Basisgebruik van `open()` ziet er als volgt uit:

```python
fh = open('myfile.txt')
# hier gebruik je methodes van `fh` om iets te doen met de inhoud
```

De tekst `"myfile.txt"` verwijst (als je `python` uitvoert in de map naar dit script staat) naar een bestand in dezelfde map als het script. Dit heet een **relatief pad**. Het is nuttig om meer over paden te leren, maar dat is voor een ander stuk leerstof.

De returnwaarde van `open` (wat we hier aan `fh` toekennen) is een "file object". Met bovenstaande syntax geeft dit object je leestoegang tot het tekstbestand. Met andere woorden: je script kan de tekst in het bestand lezen. Je doet dit door methodes van het file object op te roepen. Een voorbeeld daarvan zou zijn: `fh.read()`. Dit zou je de hele inhoud van `myfile.txt` opleveren als één lange string tekst.

{% instructions %}
