# Aha: een simpele spam filter (geen verplichte leerstof!)
{% instructions %}

Gebruik de kennis die je intussen bezit om een kleine spam filter te schrijven. Deze werkt als volgt:

1. Het script vraagt (met behulp van `input`) de gebruiker om het pad naar een map (die verondersteld wordt alleen `.txt`-files te bevatten)
2. Het script print voor elke file in deze map of het een spambericht is of niet. Een bericht is een spambericht als het een van de woorden "inheritance", "lottery" of "viagra" bevat. Woorden zijn delen van een string die gescheiden zijn door spaties. Je mag veronderstellen dat er geen leestekens gebruikt zijn.

Om alle bestanden in een bepaalde map terug te vinden, gebruik je `os.listdir()` met als argument het pad van de map met daarin de `.txt`-files. Om de naam van de map en de naam van een file aan elkaar te plakken, gebruik je `os.path.join()`. Zo levert `os.path.join("C:\\Program Files\\","myfile.txt")` je uiteindelijk `"C:\\Program Files\\myfile.txt"`.

.. important::

   Waarom `os.path.join` gebruiken? Niet elk besturingssysteem noteert bestandslocaties zoals Windows dat doet. Bovendien kan je nu negeren of er een backslash op het einde van de naam van een folder staat.

Een voorbeelduitvoer van het script, als er drie files in de te doorzoeken map staan:

```text
file1.txt: spam
file2.txt: geen spam
file3.txt: spam
```
