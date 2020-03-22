# Basis importeren van functionaliteit
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
Je kan een `import` niet meteen laten volgen door de naam van om het even welke module die ergens op je harde schijf staat. Het defaultmechanisme dat bepaalt wat je op deze manier kan importeren is als volgt:

- er wordt gezocht naar modules met de gebruikte naam in de directory waarin je `python` hebt uitgevoerd
  - als daar geen match wordt gevonden, wordt er gezocht in een aantal defaultlocaties
    - deze omvatten locaties waar packages (met `pip`,...) zijn geïnstalleerd
    - dit houdt in dat modules in de directory voorrang hebben op ingebouwde of geïnstalleerde packages
    - **soms** wordt er ook gezocht in de map van het bestand dat je aan het uitvoeren bent, **maar** dat hangt ervan af hoe je dat bestand hebt opgestart; als je het bestand uitvoert als een script (bv. `python mijnmap/mijnscript.py`) wordt er ook gezocht in de map van het bestand (d.w.z. in `mijnmap` in deze situatie)

.. important::

   We spreken hier bewust over het "defaultmechanisme". Je kan dit aanpassen, maar dat raden we niet meteen aan. Het importmechanisme van Python kan behoorlijk complex worden, dus hou het voor de korte tot middellange termijn op deze regels en probeer niet te veel vernuftige imports te schrijven.

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

Antwoord met `waar` of `niet waar` in het gevraagde tekstbestand op volgende vraag.

Ik sta met Powershell in `C:\Users\vincent` en typ daar in `python .\scripts\my_script.py`. In `my_script.py` staat bovenaan `import my_helper`. Het bestand `my_helper.py` staat in `C:\Users\vincent`. Deze `import` zal tot een foutmelding leiden.
