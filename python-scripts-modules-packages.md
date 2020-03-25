# Modules vs. scripts vs. packages

## Modules vs. scripts
We spreken in Python soms over scripts en soms over modules. Wat is nu het verschil? Technisch gesproken is er niet echt een. Het zijn allebei bestanden met de extensie `.py`.

Het verschil zit hem in hoe zo'n bestand gebruikt wordt. Als het de bedoeling is dat je het bestand rechtstreeks kan uitvoeren (bv. via `python mijn-bestand.py`) om een bepaalde taak af te werken, dan spreken we van een script. Als dat niet noodzakelijk de bedoeling is, dan spreken we van een module.

Modules die niet bedoeld zijn om rechtstreeks uit te voeren, zijn nog steeds nuttig. Ze kunnen bijvoorbeeld herbruikbare bouwsteentjes voor andere code bevatten. Goede voorbeelden hiervan zijn functies en klassen, als je een van deze al kent.

Merk op: alle scripts zijn dus modules. Niet alle modules zijn noodzakelijk scripts.

## Modules vs. packages
Packages zijn groeperingen van twee zaken:

- modules
- kleinere (geneste) packages

Packages kan je installeren met behulp van `pip`. Standaard gebeurt dit systeembreed, maar wij zullen altijd werken met virtuele omgevingen ("virtualenvs") zodat packages niet met elkaar botsen.

De syntax om een package te installeren is (uit te voeren **buiten** de REPL): `pip install package-name`. Je vindt een heleboel nuttige packages terug op de [Python Package Index](https://pypi.org/).

.. warning::

   Let er op dat je eerst je virtuele omgeving hebt geactiveerd voor je een package installeert. We willen alles zo clean mogelijk houden!

Op dit ogenblik bekijken we niet hoe je zelf packages schrijft. Dat is wat je zal doen als je code hebt geschreven die je wil delen met anderen die niet noodzakelijk aan hetzelfde project aan het werken zijn als jij.

## Filmpje
[![Filmpje modules, scripts en packages](https://i9.ytimg.com/vi/VUVqrhjl-TE/mq2.jpg?sqp=CO7B7PMF&rs=AOn4CLDF9a5-SkZYMjA-APmSvblBThKJIA)](https://youtu.be/VUVqrhjl-TE)]

## Oefening
{% instructions %}

Ga op de Python package index op zoek naar een package die je toestaat in het Flask web framework IP-adressen te bannen. Gebruik de search box alsof het Google was, hij is behoorlijk goed met fuzzy search. Bekijk dit package en kopieer het commando dat je zou moeten ingeven om deze functionaliteit toe te voegen aan jouw Python installatie. Gebruik de knop om het commando te kopiëren en plak dat letterlijk in het gevraagde bestand.
