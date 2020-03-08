# Basis importeren van functionaliteit
Meer dan 99% van de code die je nodig hebt voor zowat elke taak bestaat al. Hoe gebruik je ze? Door ze te importeren. Met behulp van het sleutelwoordje `import` kan je variabelen, functies of klassen die al bestaan buiten je module gebruiken binnen je module.

## Basisgebruik
Bovenaan in je module schrijf je `import`, gevolgd door de naam van de module of package waaruit de gewenste functionaliteit (een variabele, functie of klasse) afkomstig is. Vanaf dan kan je gebruik maken van deze functionaliteit (bijvoorbeeld: de variabele uitlezen, de functie oproepen,...).

Bijvoorbeeld, met twee bestanden `my_other_module.py` en `my_main_module.py`:

```python
def useful_function():
    print("Ik ben nuttig!")
```

```python
import my_other_module
my_other_module.useful_function()
```

Nu kunnen we `useful_function()` oproepen in `my_main_module.py`. Let wel op: we hebben `my_other_module` geïmporteerd en niet `useful_function` op zich, dus we moeten `my_other_module.useful_function()` schrijven, inclusief de naam van de module.

.. warning::

   Technisch gezien hoeven je `import` statements niet bovenaan in je module te staan. In enkele situaties is het zelfs noodzakelijk om ze ergens anders te plaatsen. Maar in de meeste gevallen willen we gewoon dat de functionaliteit meteen beschikbaar is in onze module en dan is bovenaan een goede plaats.

.. warning::

   We zullen soms spreken over het importeren van een bepaalde *package* wanneer het technisch gesproken misschien maar een *module* is. Als we gewoon geïnteresseerd zijn in het verkrijgen van een herbruikbaar bouwsteentje, is dat verschil eigenlijk niet belangrijk. Zo lang we het verschil tussen een module en een package kennen en zo lang we de gewenste taken kunnen uitvoeren, is er geen probleem.

## Wat kunnen we precies importeren?
Je kan een `import` niet meteen laten volgen door de naam van om het even welke module die ergens op je harde schijf staat. Het defaultmechanisme dat bepaalt wat je op deze manier kan importeren is als volgt:

- er wordt gezocht naar modules of packages met de gebruikte naam in de directory waarin je `python` hebt uitgevoerd
  - als daar geen match wordt gevonden, wordt er gezocht in ingebouwde of geïnstalleerde packages
  - dit houdt in dat modules of packages in de directory voorrang hebben op ingebouwde of geïnstalleerde packages

.. important::

   We spreken hier bewust over het "defaultmechanisme". Je kan dit aanpassen, maar dat raden we niet meteen aan.

## Importeren wat je nodig hebt
Modules of packages bevatten soms veel meer functionaliteit dan je nodig hebt. Tenzij je echt véél functionaliteit uit een bepaald package nodig hebt, doe je er beter aan uitdrukkelijk te zeggen welke stukjes je nodig hebt. Dat doe je met volgende syntax: `from <module-or-package> import <identifier1>, <identifier2>,...`

Op deze manier kunnen we in onze code rechtstreeks gebruik maken van de geïmporteerde identifiers.

```python
def useful_function():
    print("Ik ben nuttig!")

def useless_function():
    print("Ik ben niet nuttig!")
```

```python
from my_other_module import useful_function
useful_function()
# dit zou niet gaan:
# useless_function()
# dit zou ook niet gaan:
# my_other_module.useless_function()
# en dit zou ook niet gaan:
# my_main_module.useful_function()
```

## "Singleton" modules


## Circulaire imports
