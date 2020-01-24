# .gitignore basis

## basisprincipe
Je wil niet alle data die je produceert bijhouden in versiebeheer. Enkele voorbeelden van bestanden die je niet wil bijhouden:

* backups die automatisch gemaakt worden door je text editor
* tijdelijke bestanden die aangemaakt worden wanneer je een programma compileert
* configuratiebestanden specifiek voor jouw systeem

Omdat er in bijna elk project wel van die bestanden zijn, staat Git toe om ze uit te sluiten van versiebeheer. Dat betekent dat ze als het ware onzichtbaar zijn: ze kunnen alleen bestaan in de working directory en worden niet vermeld in berichten gegenereerd door Git.[^1]

Om een bestand te negeren, moet je eerst een bestand `.gitignore` aanmaken. Daarin plaats je dan per regel de naam van een bestand dat niet meer zichtbaar mag zijn. Je kan ook namen van mappen schrijven (om bestanden in die mappen te negeren).

.. warning::

   Je bestand moet letterlijk `.gitignore` heten, dus met een punt als eerste karakter en zonder bestandsextensie. In de meeste text editors moet je tijdens het opslaan speciaal aangeven dat je geen extensie wil gebruiken.

Je hebt bijvoorbeeld een bestand `.gitignore` dat er als volgt uitziet:

```
a.txt
b.sql
d.svg
cache
```

Als je dan de files `a.txt`, `b.sql`, `c.html`, `d.svg`, `cache/urls.txt`, `cache/names.md` maakt, dan kan je enkel `c.html` verplaatsen naar de staging area (en naar de projectgeschiedenis).

.. danger::

   `.gitignore` sluit alleen nieuwe bestanden uit! Als `a.txt` bijvoorbeeld al deel uitmaakte van de projectgeschiedenis *voor* `.gitignore` is aangemaakt, blijft `a.txt` deel uitmaken van de projectgeschiedenis en kan je wijzigingen aan `a.txt` stagen en committen alsof er geen `.gitignore` was.

**TODO: nog verder aanvullen op basis van [officiële docs](https://git-scm.com/docs/gitignore), maar beperk tot essentie**

## folderstructuur
**TODO: meer detail over werking**
Als je hetzelfde bestand `.gitignore` hebt als tevoren en je hebt volgende bestandenstructuur:

```
.
├── a.txt
├── bin
│   ├── a.txt
│   ├── cache
│   │   └── e.gv
│   └── pkg
│       └── f.pkg
├── b.sql
├── cache
│   ├── names.md
│   └── urls.txt
├── c.html
└── d.svg
```

Dan kan je `c.html` en `f.pkg` (in de map `bin/pkg`) stagen en committen.

## wildcards
**TODO: meer detail over werking**


# Voetnoten
[^1]: Het is niet absoluut onmogelijk, maar je ziet de uitzonderingen later.
