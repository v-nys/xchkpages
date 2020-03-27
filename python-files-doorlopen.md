# Files doorlopen

## Opgave
Gebruik de kennis die je intussen hebt om een lijst met absolute paden van files in een directory te tonen.

## Aanpak
- Schrijf een functie `show_files_in_directory` zonder argumenten.
- Gebruik in die functie `input` om het pad naar de map met files in te lezen.
  - De gebruiker krijgt de tekst `"Welke directory moet getoond worden?"` te zien als deze functie wordt opgeroepen.
  - Denk eraan: tekst die de gebruiker intypt, wordt vanzelf voorzien van escapes. Hij hoeft dus geen dubbele backslashes,... in te typen.
- Gebruik daarna, nog steeds in de functie, `os.listdir` met als (enige) argument het ingetypte pad om te weten te komen welke files in de map staan. Je krijgt alleen de relatieve paden te zien.
  - Je zal `os` eerst moeten importeren om dit te kunnen doen.
- Doorloop, nog steeds in de functie, met een `for`-lus de lijst met bestandsnamen en print elke bestandsnaam op het scherm.
  - Dit toont je de juiste files, maar toont enkel het relatieve pad. **Test al een keer uit op je eigen machine voor je verder gaat.**
- Pas de inhoud van je `for`-lus aan zodat het absolute pad wordt getoond. Het absolute pad krijg je door de functie `os.path.join` op te roepen met als eerste argument je directory en als tweede argument de naam van een file in die directory.

## Voorbeeldinteractie
Onderstaande voorbeelden tonen wat je ziet in een REPL. `>>>` betekent dat er iets wordt ingetypt in de REPL, een `> ` betekent dat er tekst volgt die door de gebruiker wordt ingetypt.

```text
>>> import python_files_doorlopen
>>> python_files_doorlopen.show_files_in_directory()
Welke directory moet getoond worden?
> /home/vincent/Documents
/home/vincent/Documents/karweitjes.txt
/home/vincent/Documents/verlanglijstje.txt
/home/vincent/Documents/boodschappenlijstje.txt
```

.. warning::

   Bovenstaande pad is ingegeven op een Linuxmachine. Onder Windows typ je bijvoorbeeld `C:\Users\mijnnaam\Documents`. Tekst die je intypt wordt achteraf voorzien van escapes, dus je typt elke backslash maar één keer onder Windows. Je typt géén aanhalingstekens, `input` verwacht namelijk sowieso een string.

## Automatische controle
{% instructions %}

Enkele zaken om rekening mee te houden:

- De vraag "Welke directory moet getoond worden?" moet exact zo gesteld worden als in de voorbeelden. Kopieer eventueel de tekst om typfouten te vermijden.
- Als je script geweigerd wordt, krijg je te zien onder welke omstandigheden je script fout doet en wat het verschil is met wat de modeloplossing doet. Probeer met die informatie je fout recht te zetten. Als dat niet lukt, contacteer dan je lector.
