# Returnwaarden van functies
Functies kunnen je een bepaald resultaat opleveren. We noemen dit resultaat de **returnwaarde** (of "retourwaarde") van de functie.

Zo levert `pow(3,3)` je het resultaat `27` op, omdat `3 * 3 * 3` gelijk is aan `27`. Gelijkaardig: `max(3,5,4)` heeft als returnwaarde `5`, omdat dat het antwoord is op de vraag: "wat is het maximum van de gegeven getallen?"

Op het eerste zicht vrij eenvoudig, maar let op. Wat is de returnwaarde van `print("Hello, World!")`? Veel beginners veronderstellen dat dit `"Hello, World!"` is, omdat ze dat op hun scherm te zien krijgen. Dat is niet het geval. Als je de functie `print` gebruikt, stel je namelijk geen **vraag**. Je geeft een **bevel**, namelijk: "zet dit op het scherm" (of, nauwkeuriger, de output stream). Bij een bevel hoort geen antwoord, dus `print` heeft **geen returntype**.

## `None`
Als functieoproepen expressies zijn en sommige functies geen returntype hebben, zorgt dat dan niet voor problemen? In feite wel. Dit wordt opgelost door een ontbrekende waarde voor te stellen. In Python gebeurt dit met `None`. Probeer eens uit in de Python REPL: `print(print("Hello, World!"))`.

.. warning::

   Vergeet niet dat de REPL resultaten van een berekening automatisch afprint. Dus het is niet omdat je iets in de REPL ziet verschijnen, dat er een `print` staat.
   Omgekeerd is het ook niet zo dat een geprinte waarde een returnwaarde is. Om op die vraag te antwoorden, moet je je functies kennen, de documentatie raadplegen of experimenteren.

## Oefening
{% instructions %}
Schrijf de dubbele print van hierboven ook uit in het gevraagde bestand en voer dat bestand uit. Verklaar voor jezelf het verschil in wat je ziet.
