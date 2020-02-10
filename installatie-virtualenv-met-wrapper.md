# Installatie virtualenv met wrapper
Als je Python op je systeem hebt staan, kan je **Python packages** installeren. Dit zijn projecten van anderen die jij kan herbruiken. Er zijn packages voor bijna elke taak die je maar kan bedenken.

Het nadeel van packages is dat er soms **conflicten** optreden. Het kan bijvoorbeeld zijn dat je package `A` wil installeren, dat afhankelijk is van package `B` (versie 1). Als je daarnaast package `C` wil installeren, dat afhankelijk is van package `B` (versie 2), is er mogelijk een probleem. Misschien is package `B` versie 2 niet achterwaarts compatibel, d.w.z. dat versie 2 niet **in de plaats** van versie 1 gebruikt mag worden.

Om dat op te lossen, maken we gebruik van een **virtuele omgeving** of **virtualenv**. Dit is een geïsoleerde omgeving waarin we packages kunnen installeren. We kunnen zo veel omgevingen maken als we willen. Zo lang we `A` en `C` niet **samen** nodig hebben, kunnen we dus een omgeving maken met daarin `A` en `B` (versie 1) en daarnaast een tweede omgeving met `C` en `B` (versie 2).

Om te kunnen werken met virtuele omgevingen, installeren we ons eerste package: `virtualenv`. Werken met virtuele omgevingen is soms wat onhandig, dus we installeren meteen een tweede package om alles wat makkelijker te maken: `virtualenvwrapper` (of de Windows-variant, `virtualenvwrapper-win`).

# Opdracht
Installeer de stukjes software `virtualenv` en `virtualenvwrapper-win` zoals aangegeven op [deze pagina](https://timmyreilly.azurewebsites.net/python-pip-virtualenv-installation-on-windows/). Je moet alleen de software installeren, dus als `pip install virtualenvwrapper-win` werkt, ben je klaar met deze pagina.

.. warning::

   Als je niet op Windows werkt, typ je niet `virtualenvwrapper-win`, maar gewoon `virtualenvwrapper`.

Hier hoort geen bijkomende opdracht bij. Als je installatie werkt, markeer je deze knoop als afgewerkt.
{% instructions %}
