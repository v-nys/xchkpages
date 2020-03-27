# Een regel met spam herkennen in een functie

## Opgave
Kopieer je code om een regel te controleren op spam en pas je check aan, zodat hij niet meteen plaatsvindt als je je module uitvoert als een script.

## Aanpak
- Kopieer je oplossing om na te gaan of één regel text spam bevat.
- Verwijder de regel waarin je input vraagt van de gebruiker.
- Zet de rest van de code in een functie `check_spam_line` met één argument.
  - Het argument heeft dezelfde naam als de variabele waaraan je in de vorige versie de input toekende.
  - Dit argument zorgt ervoor dat je geen input meer hoeft te vragen. De functie kan opgeroepen worden met de te controleren regel.

## Voorbeeldinteracties
- Je script zal niets tonen op het scherm wanneer het wordt uitgevoerd. Als je functie wordt opgeroepen met een regel die spam bevat, verschijnt er `Dit is spam.` op het scherm. Als ze wordt opgeroepen met een regel die geen spam bevat, verschijnt er `Dit is geen spam.`.
- Je kan je functie wel testen op je machine als volgt:
  - Schrijf de functie uit.
  - Start een REPL in de folder waar je module staat.
  - Importeer `python_spam_regel_functie`.
  - Voer `python_spam_regel_functie.check_spam_line` uit met een regel tekst als argument.
    - Herhaal dit voor enkele regels om te zien dat alles goed werkt.

## Automatische controle
{% instructions %}

- Wijk niet af van de gegeven aanpak. Gebruik exact de naam `check_spam_line` en zorg dat de functie één argument krijgt.
