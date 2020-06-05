# virtualenv met wrapper

## installatie
Als je Python op je systeem hebt staan, kan je **Python packages** installeren. Dit zijn projecten van anderen die jij kan herbruiken. Er zijn packages voor bijna elke taak die je maar kan bedenken.

Het nadeel van packages is dat er soms **conflicten** optreden. Het kan bijvoorbeeld zijn dat je package `A` wil installeren, dat afhankelijk is van package `B` (versie 1). Als je daarnaast package `C` wil installeren, dat afhankelijk is van package `B` (versie 2), is er mogelijk een probleem. Misschien is package `B` versie 2 niet achterwaarts compatibel, d.w.z. dat versie 2 niet **in de plaats** van versie 1 gebruikt mag worden.

Om dat op te lossen, maken we gebruik van een **virtuele omgeving** of **virtualenv**. Dit is een geïsoleerde omgeving waarin we packages kunnen installeren. We kunnen zo veel omgevingen maken als we willen. Zo lang we `A` en `C` niet **samen** nodig hebben, kunnen we dus een omgeving maken met daarin `A` en `B` (versie 1) en daarnaast een tweede omgeving met `C` en `B` (versie 2).

Om te kunnen werken met virtuele omgevingen, installeren we ons eerste package: `virtualenv`. Werken met virtuele omgevingen is soms wat onhandig, dus we installeren meteen een tweede package om alles wat makkelijker te maken: `virtualenvwrapper` (of een Windows-variant, `virtualenvwrapper-win` of `virtualenvwrapper-powershell`).

.. warning::

   `virtualenvwrapper-win` is bedoeld om te gebruiken in `cmd.exe`, dus de "ouderwetse" Windows command line. Niet in PowerShell!

## gebruik
Om een nieuwe virtuele omgeving te maken, typ je  (niet in Python, maar in je gewone shell omgeving, bv. `cmd` of je OSX-terminal) `mkvirtualenv` gevolgd door de naam die je wenst te gebruiken voor je omgeving. Bijvoorbeeld: `mkvirtualenv osscriptingenv`.

Om te tonen hoe je virtuele omgevingen heten, typ je (niet in Python, maar in je gewone shell omgeving, bv. `cmd` of je OSX-terminal) `lsvirtualenv`.

Om een van deze omgevingen te activeren, typ je `workon`, gevolgd door de naam. Bijvoorbeeld: `workon osscriptingenv`.

Je vindt [hier](https://pypi.org/project/virtualenvwrapper-win/) een uitgebreide lijst met commando's, maar bovenstaande drie zijn genoeg voor ons.

.. danger::

   In de cursus OS Scripting wordt **altijd** verondersteld dat je je packages installeert in een virtuele omgeving. Dit verkleint de kans op problemen aanzienlijk.

# Opdracht
Installeer de stukjes software `virtualenv` en `virtualenvwrapper-win` zoals aangegeven op [deze pagina](https://timmyreilly.azurewebsites.net/python-pip-virtualenv-installation-on-windows/). Je moet alleen de software installeren, dus als `pip install virtualenvwrapper-win` werkt, ben je klaar met deze pagina.

.. warning::

   Als je niet op Windows werkt, typ je niet `virtualenvwrapper-win`, maar gewoon `virtualenvwrapper`.

Hier hoort geen bijkomende opdracht bij. Als je installatie werkt, markeer je deze knoop als afgewerkt.
{% instructions %}
