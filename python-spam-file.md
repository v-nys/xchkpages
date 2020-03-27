# Een spam file klasseren

## Opgave
Gebruik de kennis die je intussen na te gaan of een `.txt`-file spam bevat. Je zal hiervoor de file moeten openen en nagaan of hij een verboden woord ("inheritance", "lottery" of "viagra") bevat.

## Aanpak
- Importeer je eerdere module `python_spam_regel_functie`.
- Definieer een functie: `file_is_spam`, zonder parameters.
- Gebruik in die functie `input` om het pad naar de map met files in te lezen.
  - Denk eraan: tekst die de gebruiker intypt, wordt vanzelf voorzien van escapes. Hij hoeft dus geen dubbele backslashes,... in te typen.
- Maak in die functie een variabele die de regels van de file bevat. Hiervoor moet je de file eerst openen met `with`. De regels lezen doe je met `readlines`.
- Maak in die functie een variabele `is_spam` die start met de waarde `False`.
- Doorloop in die functie elke regel. Als een regel in een file spam is, is heel de file spam. Dit kan je controleren met je functie uit de eerdere oefening die zegt of één regel spam is.
- Geef via `return`, nadat je alle regels hebt doorlopen, `True` of `False` terug naargelang de file spam is of niet.

## Voorbeeldinteracties
Onderstaande voorbeelden tonen wat je ziet in een REPL. `>>>` betekent dat er iets wordt ingetypt in de REPL`, `>` betekent dat er input wordt gelever aan het programma.

Eerste voorbeeld:

```text
>>> import python_spam_file
>>> python_spam_file.file_is_spam()
Welke file moet gecontroleerd worden?
> /home/vincent/Documents/suspicious_file.txt
Deze file bevat spam!
```

Tweede voorbeeld:

```text
>>> python_spam_file.file_is_spam()
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
