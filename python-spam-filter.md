# Een simpele spam filter

.. danger::

   Je mag deze oefening al maken als je wil, maar ik ben nog tips aan het uitschrijven over hoe je ze best oplost.

## Opgave
Gebruik de kennis die je intussen bezit om een kleine spam filter te schrijven. Deze werkt als volgt:

1. Het script vraagt de gebruiker om het pad naar een map met daarin allemaal `.txt` files. Deze bevatten de e-mails die gecontroleerd moeten worden.
2. Het script print voor elke file in deze map of het een spambericht is of niet. Een bericht is een spambericht als het een van de woorden "inheritance", "lottery" of "viagra" bevat. Woorden zijn delen van een string die gescheiden zijn door spaties. Je mag veronderstellen dat er geen leestekens gebruikt zijn.

## Aanpak
- Gebruik `input` om het pad naar de map met files in te lezen.
  - Denk eraan: tekst die de gebruiker intypt, wordt vanzelf voorzien van escapes. Hij hoeft dus geen dubbele backslashes,... in te typen.
- Gebruik `os.listdir` met als argument het pad dat de gebruiker heeft ingetypt om te weten te komen welke files in deze map staan.
  - Het resultaat van `os.listdir` is een lijst met namen van bestanden of directories in de map die je meegeeft.
    - Je moet dus de module `os` importeren.
    - Zoals eerder aangegeven mag je veronderstellen dat alle files in deze map `.txt`-files zijn die je wil controleren.
    - Je krijgt alleen de bestandsnamen, niet het volledige pad naar elk bestand.
  - Je moet met een `for`-lus alle bestanden in de map in kwestie doorlopen, zodat je ze allemaal kan klasseren.
    - In de `for`-lus moet je telkens een bestand openen zodat je het kan klasseren. Doe dit met `with`.
      - Om de een absoluut pad te verkrijgen, gebruik je de functie `os.path.join` met als eerste argument de map waarin de file staat en als tweede argument de naam van die file.
      - Maak in het `with`-blok een variabele om bij te houden of je al een verboden woordje bent tegengekomen.
      - Doorloop dan alle regels in het bestand. Daarvoor gebruik je `readlines`.
        - Elke regel splits je met `split` in woorden.
	- Doorloop alle woorden in de regel met een geneste `for`-lus. Als een woord verboden is, pas je de variabele aan die aangeeft of je bestand spam is of niet.
      - Nadat je het bestand hebt doorlopen, toon je of het spam was of niet.

## Voorbeeldinteractie
Een voorbeelduitvoer van het script, als er drie files in de te doorzoeken map staan:

```text
file1.txt: spam
file2.txt: geen spam
file3.txt: spam
```

## Automatische controle
{% instructions %}
