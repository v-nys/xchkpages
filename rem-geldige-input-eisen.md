# Remediëring: geldige input eisen

## Probleemstelling
Als we een script schrijven, hebben we liefst dat het niet helemaal fout loopt als de gebruiker een typfout maakt. Het zou handig zijn als we de gebruiker bij foute input konden vragen om opnieuw te antwoorden.

## Opgave
Schrijf een script met de gevraagde naam (zie beneden in de automatische instructies). Dit script vraagt de gebruiker om "ja" of "neen" te typen. Als het antwoord iets anders is dan die twee **exacte** mogelijkheden, wordt de vraag herhaald. Als het antwoord wel geldig is, wordt "Bedankt voor je input!" geprint.

## Voorbeeldinteractie
Tekst voorafgegaan door `>` is tekst die de gebruiker inypt. Andere tekst wordt door het programma op het scherm getoond.

```
Gelieve ja of nee te antwoorden.
> hallo
Gelieve ja of nee te antwoorden.
> hoe gaat het?
Gelieve ja of nee te antwoorden.
> ja
Bedankt voor je input!
```

## Aanpak
Je kan deze oefening oplossen met behulp van een `while` lus en de functie `input`. Je moet volgend idee programmeren: eerst vraag je om **input** van de gebruiker (zie de functie met die naam). **Zo lang** (zie `while`) die input **niet gelijk is aan `"ja"`** en **niet gelijk is aan `"neen"`** (zie booleaanse expressies) vraag je opnieuw om input van de gebruiker (en je mag daarbij de oude input overschrijven). Daarna toon je de eindboodschap.

## Automatische controle
.. warning::

   De tekst die je programma toont moet exact dezelfde zijn als die van de modeloplossing. Kopieer eventueel stukken uit de voorbeeldinteractie op typfouten te vermijden

{% instructions %}
