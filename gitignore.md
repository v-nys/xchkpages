# `.gitignore` basis

## basisprincipe
Je wil niet alle data die je produceert bijhouden in versiebeheer. Enkele voorbeelden van bestanden die je niet wil bijhouden:

* tijdelijke bestanden die aangemaakt worden wanneer je een programma compileert
* bestanden die je genereert uit bronbestanden
* bestanden die specifiek zijn voor jouw systeem[^1]

Omdat er in bijna elk project wel van die bestanden zijn, staat Git toe om ze uit te sluiten van versiebeheer. Dat betekent dat ze als het ware onzichtbaar zijn: ze kunnen alleen bestaan in de working directory en worden niet vermeld in berichten gegenereerd door Git.[^2]

Om een bestand te negeren, moet je eerst een bestand `.gitignore` aanmaken. Daarin plaats je dan per regel de naam van een bestand dat niet meer zichtbaar mag zijn. Je kan ook namen van mappen schrijven (om bestanden in die mappen te negeren).

.. tip::

   Wij zullen voorlopig `.gitignore` altijd in de root plaatsen. Je kan ook `.gitignore`-bestanden in submappen plaatsen, maar dat is niet zonder gevolgen. Leer eerst de basis.

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

## folderstructuur
Normaal gesproken[^3] matcht een patroon op elk niveau in de bestandenstructuur. Het maakt dus niet uit of een te negeren bestand in de root staat of in een submap. Als je hetzelfde bestand `.gitignore` hebt als tevoren en je hebt volgende bestandenstructuur:

```
root
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

## simpele wildcards
Soms wil je hele groepen bestanden negeren. Je hebt misschien een reeks `.png`-bestanden die gegenereerd worden uit `.svg`-bestanden. Dan is het een slecht idee de `.png`-bestanden in versiebeheer te plaatsen. In de plaats daarvan kan je beter alle `.png`-bestanden in dat project negeren. Om dit te doen, schrijf je "*.png" (zonder aanhalingstekens). Een "*" matcht met alles behalve het karakter "/". Je kan ook één karakter matchen (behalve de "/") met het karakter "?".

# Opdracht
{% instructions %}
Veronderstel dat je begint vanaf volgende bestandenstructuur:

```
root
├── submap1
│   ├── 1A.pdf
│   ├── 1B.pdf
│   ├── 1C.md
│   └── cache
├── submap2
│   ├── cache
│   ├── submap2A
│   │   ├── 2Aa.pdf
│   │   └── 2Ab.pdf
│   └── submap2B
│       └── 2Ba.md
└── submap3
    ├── cache
    ├── submap3A
    │   ├── 2Ba.md
    │   └── cache
    └── submap3B
        └── 3Ba.pdf
```

Indien je je bestand zou hernoemen naar `.gitignore`, zou het volgende zaken doen:

* alle mappen `cache` negeren, waar ze ook staan in de structuur
* alle `.pdf`-bestanden negeren, waar ze ook staan in de structuur
* het bestand `1C.md` negeren
* het bestand `2Ba.md` uit `submap3A` negeren, maar niet dat uit `submap2B`

.. warning::

   We noemen het bestand niet `.gitignore` omdat het dan ook zou functioneren als een `.gitignore`-bestand.

# Voetnoten
[^1]: Er zijn andere (aangeraden) manieren om deze te negeren dan een `.gitignore` in je project, maar we willen niet afdwalen.
[^2]: Het is niet absoluut onmogelijk, maar je ziet de uitzonderingen later.
[^3]: Je kan dit gedrag veranderen, maar we willen niet afdwalen.
