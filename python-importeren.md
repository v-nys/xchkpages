# Basis importeren van functionaliteit

## Filmpje
[![Filmpje importeren](https://i9.ytimg.com/vi/twnAT5DmJVY/mq1.jpg?sqp=CImm7fMF&rs=AOn4CLDNZxPQ1P2iyT9WNRGGYPAIQvUpXQ)](https://youtu.be/twnAT5DmJVY)

Meer dan 99% van de code die je nodig hebt voor zowat elke taak bestaat al. Hoe gebruik je ze? Door ze te importeren. Met behulp van het sleutelwoordje `import` kan je variabelen, functies of klassen die al bestaan buiten je module gebruiken binnen je module.

## Basisgebruik
Bovenaan in je module schrijf je `import`, gevolgd door de naam van de module waaruit de gewenste functionaliteit (een variabele, functie of klasse) afkomstig is. Vanaf dan kan je gebruik maken van deze functionaliteit (bijvoorbeeld: de variabele uitlezen, de functie oproepen,...).

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

## Wat kunnen we precies importeren?
.. warning::

   De importmechanismen van Python zijn erg complex. Je vindt een volledige uitleg [hier](https://docs.python.org/3/reference/import.html#importsystem), maar de kans is klein dat je er op dit punt iets aan hebt.

Python kan importeren vanaf verschillende locaties. Welke locaties dat zijn hangt af van zowel je Pythoninstallatie als je eigen systeeminstellingen. Je kan echter wel volgende vuistregels hanteren:

- als je een script uitvoert (bv. met `python Documents/scripts/my_script.py`) kan je andere modules importeren die in diezelfde folder staan
- als je een REPL opstart, kan je modules importeren die in je de folder staan waarin je de REPL hebt opgestart
- ingebouwde modules en modules die je via `pip` hebt geïnstalleerd, kan je importeren zoals in de documentatie wordt aangegeven

## Importeren wat je nodig hebt
Modules bevatten soms veel meer functionaliteit dan je nodig hebt. Tenzij je echt véél functionaliteit uit een bepaalde module nodig hebt, doe je er beter aan uitdrukkelijk te zeggen welke stukjes je nodig hebt. Dat doe je met volgende syntax: `from <module> import <identifier1>, <identifier2>,...`

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

## Circulaire imports
Eén situatie waarvoor je moet opletten bij het gebruik van `import` is de "circulaire import". Dit betekent dat een module, bijvoorbeeld `a.py` een andere module, bijvoorbeeld `b.py` nodig heeft, terwijl de andere module (`b.py`) ook de eerste nodig heeft.

Visueel uitgedrukt:
![circulaire import]({% pagerepo circular-import.png %})

Dit zal **niet** tot een foutmelding leiden, maar wel tot subtiele bugs. Het mechanisme hierachter gaan we niet bespreken. Zorg er gewoon voor dat je circulaire imports vermijdt! Er is ook geen kant-en-klare oplossing voor circulaire imports, maar meestal betekent het dat `a.py` en `b.py` allebei te veel taken vervullen. Normaal kan je er kleinere modules uit afsplitsen die niet meer afhankelijk zijn van elkaar.

## Verder
Online kan je misschien code tegenkomen die gebruik maakt van complexere imports. Hoogstwaarschijnlijk gaat het dan over relatieve of absolute imports. Wij behandelen deze niet in de cursus OS Scripting, maar je kan er [hier](https://realpython.com/absolute-vs-relative-python-imports/) meer over lezen.

## Oefening
{% instructions %}

Veronderstel dat je in `~/Documents/scripts` staat met daarin een submap `test`. In `test` staat een file met naam `my_module.py` en in je huidige map staat een module `helper_module.py`. In `my_module.py` staat bovenaan `import helper_module`. Antwoord met `waar` of `niet waar` op de vraag: "dit zal onder het defaultmechanisme werken als je je script opstart met `python test/my_module.py`".
