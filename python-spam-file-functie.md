# Een spam file klasseren met een functie

## Opgave
Gebruik de kennis die je intussen na te gaan of een `.txt`-file spam bevat. Je zal hiervoor de file moeten openen en nagaan of hij een verboden woord ("inheritance", "lottery" of "viagra") bevat.

## Aanpak
- Kopieer je eerdere module `python_spam_file`.
- Definieer een functie: `file_is_spam`, zonder parameters, met één parameter.
  - We zullen hiervoor de naam van de file meegeven als we de functie gebruiken.
- Verwijder de vraag naar het pad van het te controleren bestand.
- Vervang de `print` die aangeeft dat een file spam is door `True`.
- Vervang de `print` die aangeeft dat een file geen spam is door `False`.

## Voorbeeldinteracties
Onderstaande voorbeelden tonen wat je ziet in een REPL. `>>>` betekent dat er iets wordt ingetypt in de REPL, `>` betekent dat er input wordt gelever aan het programma. Test zelf uit met voldoende voorbeeldbestanden.

```text
>>> import python_spam_file_functie
>>> python_spam_file.file_is_spam('/home/vincent/Documents/suspicious_file.txt')
True
>>> python_spam_file.file_is_spam('/home/vincent/Documents/innocuous_file.txt')
False
```

.. warning::

   In de REPL moet je je paden voorzien van escapes. Onder Windows typ je bijvoorbeeld `C:\\Users\\mijnnaam\\Documents\\suspicious_file.txt`.

## Automatische controle
{% instructions %}

- Als je script geweigerd wordt, krijg je te zien onder welke omstandigheden je script fout doet en wat het verschil is met wat de modeloplossing doet. Probeer met die informatie je fout recht te zetten. Als dat niet lukt, contacteer dan je lector.
