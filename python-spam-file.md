# Een spam file klasseren

## Opgave
Gebruik de kennis die je intussen na te gaan of een `.txt`-file spam bevat. Je zal hiervoor de file moeten openen en nagaan of hij een verboden woord ("inheritance", "lottery" of "viagra") bevat.

## Aanpak
- Gebruik `input` om het pad naar de map met files in te lezen.
  - Denk eraan: tekst die de gebruiker intypt, wordt vanzelf voorzien van escapes. Hij hoeft dus geen dubbele backslashes,... in te typen.
- Maak een variabele die de regels van de file bevat. Hiervoor moet je de file eerst openen met `with`. De regels lezen doe je met `readlines`.
- Maak een variabele die aangeeft of er een verboden woord is gevonden. Deze variabele start met de waarde `False`. Als je nog geen enkel woord hebt gelezen, heb je immers geen enkel verboden woord gelezen.
- Ga met een `for`-lus door elke regel van het bestand.
  - Splits in de `for`-lus de regel in woorden met behulp van `split`.
  - Ga met een geneste `for`-lus duur de woorden in de regel. Als je een woord tegenkomt dat verboden is (gebruik `if` en `==`), dan zet je de variabele die aangeeft of je file spam bevat op `True`.

## Voorbeeldinteracties
Twee voorbeelden volgen. Een `> ` betekent dat er tekst volgt die door de gebruiker wordt ingetypt.

Eerste voorbeeld:

```text
Welke file moet gecontroleerd worden?
> /home/vincent/Documents/suspicious_file.txt
Deze file bevat spam!
```

Tweede voorbeeld:

```text
Welke file moet gecontroleerd worden?
> /home/vincent/Documents/innocuous_file.txt
Deze file is in orde!
```

.. warning::

   Bovenstaande paden zijn ingegeven op een Linuxmachine. Onder Windows typ je bijvoorbeeld `C:\Users\mijnnaam\Documents\suspicious_file.txt`. Tekst die je intypt wordt achteraf voorzien van escapes, dus je typt elke backslash maar één keer onder Windows. Je typt géén aanhalingstekens, `input` verwacht namelijk sowieso een string.

## Automatische controle
{% instructions %}

Enkele zaken om rekening mee te houden:

- De vraag "Welke file moet gecontroleerd worden?" moet exact zo gesteld worden als in de voorbeelden. Kopieer eventueel de tekst om typfouten te vermijden.
- De output moet exact "Deze file bevat spam!" of "Deze file is in orde!" zijn. Kopieer ook deze stukken tekst eventueel om typfouten te vermijden.
- Als je script geweigerd wordt, krijg je te zien onder welke omstandigheden je script fout doet en wat het verschil is met wat de modeloplossing doet. Probeer met die informatie je fout recht te zetten. Als dat niet lukt, contacteer dan je lector.
