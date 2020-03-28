# Returnwaarden van functies

## Filmpje
[![Filmpje basisidee functies](https://i9.ytimg.com/vi/twnAT5DmJVY/mq1.jpg?sqp=CImm7fMF&rs=AOn4CLDNZxPQ1P2iyT9WNRGGYPAIQvUpXQ)](https://youtu.be/LgWiHLk5RFQ)

Functies kunnen je een bepaald resultaat opleveren. We noemen dit resultaat de **returnwaarde** (of "retourwaarde") van de functie.

Zo levert `pow(3,3)` je het resultaat `27` op, omdat `3 * 3 * 3` gelijk is aan `27`. Gelijkaardig: `max(3,5,4)` heeft als returnwaarde `5`, omdat dat het antwoord is op de vraag: "wat is het maximum van de gegeven getallen?"

Op het eerste zicht vrij eenvoudig, maar let op. Wat is de returnwaarde van `print("Hello, World!")`? Veel beginners veronderstellen dat dit `"Hello, World!"` is, omdat ze dat op hun scherm te zien krijgen. Dat is niet het geval. Als je de functie `print` gebruikt, stel je namelijk geen **vraag**. Je geeft een **bevel**, namelijk: "zet dit op het scherm" (of, nauwkeuriger, de output stream). Bij een bevel hoort geen antwoord, dus `print` heeft **geen returntype**.

Zie je `print` toch als antwoord op een vraag? Bekijk dit dan eens niet van uit het standpunt van een mens, maar van een computer die meerdere berekeningen combineert. Veronderstel volgende samengestelde berekening: `verdubbel(3) + verdubbel(5)`. Als `verdubbel` het dubbel van zijn input berekent en dat als **antwoord** teruggeeft, kan de optelling verder. Als `verdubbel` het dubbel van zijn input op het scherm toont, krijgt de gebruiker misschien wel enkele getallen te zien waar hij niet in geïnteresseerd is, maar kan de optelling niet verder. Dat zou namelijk hetzelfde zijn als `print(6) + print(10)`. Dat gaat niet: `print` **zegt alleen maar dat iets op het scherm moet verschijnen** en kan niet gebruikt worden om resultaten voor andere bewerkingen mee te produceren.

## `None`
Als functieoproepen expressies zijn en sommige functies geen returntype hebben, zorgt dat dan niet voor problemen? In feite wel. Dit wordt opgelost door een ontbrekende waarde voor te stellen. In Python gebeurt dit met `None`. Probeer eens uit in de Python REPL: `print(print("Hello, World!"))`.

.. warning::

   Vergeet niet dat de REPL resultaten van een berekening automatisch afprint. Dus het is niet omdat je iets in de REPL ziet verschijnen, dat er een `print` staat.
   Omgekeerd is het ook niet zo dat een geprinte waarde een returnwaarde is. Om op die vraag te antwoorden, moet je je functies kennen, de documentatie raadplegen of experimenteren.

Als je in de REPL `None` terugkrijgt als returnwaarde, wordt dit niet geprint. Probeer eens gewoon `None` te typen in de REPL en daarna `3` te typen. Anders kreeg je met de instructie van hierboven met de geneste print het volgende resultaat:

```python
Hello, World!
None
None
```

Zie je waarom?

{% instructions %}
