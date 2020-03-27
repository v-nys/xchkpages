# Files doorlopen

## Opgave
Gebruik de kennis die je intussen hebt om een lijst met absolute paden van files in een directory terug te geven.

## Aanpak
- Schrijf een functie `get_files_in_directory` met één argument. Dit zal de directory zijn waaruit we files willen halen.
- Maak in die functie een variabele aan die een lege lijst bevat.
- Doorloop (met `os.listdir` en een `for`) alle entries in de directory die je wil uitlezen.
  - In de `for` bepaal je eerst het absolute pad van de file in kwestie. Doe dit opnieuw met `os.path.join` tussen de directory en de filenaam.
    - Eens je het absolute pad hebt, plak je het aan de variabele die je in de tweede stap hebt aangemaakt met `append`.
- Na je `for` geef je de variabele terug met een `return`.

## Voorbeeldinteractie
Onderstaande voorbeelden tonen wat je ziet in een REPL. `>>>` betekent dat er iets wordt ingetypt in de REPL, een `> ` betekent dat er tekst volgt die door de gebruiker wordt ingetypt.

```text
>>> import python_lijst_absolute_paden
>>> python_lijst_absolute_paden.get_files_in_directory('/home/vincent/Documents')
['/home/vincent/Documents/karweitjes.txt', '/home/vincent/Documents/verlanglijstje.txt', '/home/vincent/Documents/boodschappenlijstje.txt']
```

## Automatische controle
{% instructions %}
