# Een simpele spam filter

.. danger::

   Je mag deze oefening al maken als je wil, maar ik ben nog tips aan het uitschrijven over hoe je ze best oplost.

## Opgave
Gebruik de kennis die je intussen bezit om een kleine spam filter te schrijven. Deze werkt als volgt:

1. De gebruiker moet de filter opstarten door een functie op te roepen.
2. De filter vraagt de gebruiker om het pad naar een map met daarin allemaal `.txt` files. Deze bevatten de e-mails die gecontroleerd moeten worden.
3. De filter print voor elke file in deze map of het een spambericht is of niet. Een bericht is een spambericht als het een van de woorden "inheritance", "lottery" of "viagra" bevat. Woorden zijn delen van een string die gescheiden zijn door spaties. Je mag veronderstellen dat er geen leestekens gebruikt zijn.

## Aanpak
- Definieer een functie `spam_filter` zonder argumenten.
- Gebruik (in deze functie) je kennis over het doorlopen van files om:
  1. Het pad naar een directory te vragen aan de gebruiker.
  2. Een lijst aan te maken van alle absolute bestandsnamen in deze directory.
  3. Deze lijst te koppelen aan een variabele `files`.
- Gebruik (nog steeds in deze functie) een `for` lus die over deze files gaat.
  - Voor elke file wordt gezegd of het spam is of niet.
    - Herschrijf hiervoor je functie om een file wel of niet als spam te klasseren zodat ze een boolean (`True` of `False`) teruggeeft.

## Voorbeeldinteractie
Een voorbeelduitvoer van het script, als er drie files in de te doorzoeken map staan:

```text
/home/vincent/file1.txt: spam
/home/vincent/file2.txt: geen spam
/home/vincent/file3.txt: spam
```

## Automatische controle
{% instructions %}
