# Remediëring: geldige input eisen

## Probleemstelling
Als we een script schrijven, hebben we liefst dat het niet helemaal fout loopt als de gebruiker een typfout maakt. Het zou handig zijn als we de gebruiker bij foute input konden vragen om opnieuw te antwoorden.

## Opgave
Schrijf een script met de gevraagde naam (zie beneden in de automatische instructies). Dit script bevat een functie, `vraag_ja_of_neen` (zonder parameters). Wanneer deze functie wordt opgeroepen, vraagt ze de gebruiker om "ja" of "neen" te typen. Als het antwoord iets anders is dan die twee **exacte** mogelijkheden, wordt de vraag herhaald. Als het antwoord wel geldig is, wordt "Bedankt voor je input!" geprint. Je hoeft geen `return` toe te voegen.

## Voorbeeldinteractie
Dit is iets dat je zou kunnen zien wanneer `vraag_ja_of_neen` wordt opgeroepen. Tekst voorafgegaan door `>` is tekst die de gebruiker inypt. Andere tekst wordt door het programma op het scherm getoond.

```
Gelieve ja of neen te antwoorden.
> hallo
Gelieve ja of neen te antwoorden.
> hoe gaat het?
Gelieve ja of neen te antwoorden.
> ja
Bedankt voor je input!
```

## Aanpak
Je kan deze oefening oplossen met behulp van een `while` lus en de functie `input`. Je moet volgend idee programmeren: eerst vraag je om **input** van de gebruiker (zie de functie met die naam). **Zo lang** (zie `while`) die input **niet gelijk is aan `"ja"`** en **niet gelijk is aan `"neen"`** (zie booleaanse expressies) vraag je opnieuw om input van de gebruiker (en je mag daarbij de oude input overschrijven). Daarna toon je de eindboodschap.

## Automatische controle
.. warning::

   De automatische controle voor deze knoop is nog niet af. Ik ben er mee bezig.

{% instructions %}
