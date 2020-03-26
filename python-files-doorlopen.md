# Files doorlopen

## Opgave
Gebruik de kennis die je intussen hebt om een lijst met absolute paden van files in een directory te tonen.

## Aanpak
- Gebruik `input` om het pad naar de map met files in te lezen.
  - Denk eraan: tekst die de gebruiker intypt, wordt vanzelf voorzien van escapes. Hij hoeft dus geen dubbele backslashes,... in te typen.
- Gebruik `os.listdir` met als argument het ingetypte pad om te weten te komen welke files in de map staan. Je krijgt alleen de relatieve paden te zien.
  - Je zal `os` eerst moeten importeren om dit te kunnen doen.
- Doorloop met een `for`-lus de lijst met bestandsnamen en print elke bestandsnaam op het scherm.
  - Dit toont je de juiste files, maar toont enkel het relatieve pad. **Test al een keer uit op je eigen machine voor je verder gaat.**
- Pas de inhoud van je `for`-lus aan zodat het absolute pad wordt getoond. Het absolute pad krijg je door de functie `os.path.join` op te roepen met als eerste argument je directory en als tweede argument de naam van een file in die directory.

## Voorbeeldinteractie
Een `> ` betekent dat er tekst volgt die door de gebruiker wordt ingetypt.

```text
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
