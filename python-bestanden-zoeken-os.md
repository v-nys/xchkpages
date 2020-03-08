# Bestanden zoeken met de `os.path`-module
De `os.path`-module biedt functionaliteit aan die te maken heeft met het bestandensysteem. Je kan er bijvoorbeeld volgende zaken mee controleren:

- is een bepaald bestand aanwezig op schijf?
- wat is het gedeelte dat een bestandsnaam voorstelt in een padstring?
- wat is het gedeelte dat een directory voorstelt in een padstring?
- is een pad absoluut of relatief?
- ...

We gaan hier niet alle mogelijkheden opsommen. In het kort: als je iets wil doen dat met het bestandensysteem of met bestandsnamen te maken heeft, gebruik je meestal `os.path`.

.. danger::

   Het kan verleidelijk zijn snel even padstrings op te bouwen door zelf stukken tekst aan elkaar te plakken met wat (back)slashes tussen. Let op! Niet alle besturingssystemen gebruiken dezelfde notatie om delen van een pad af te bakenen. Door gebruik te maken van `os.path` zal je code draagbaarder zijn naar andere besturingssystemen.

## Oefening
{% instructions %}

Zoek in [de documentatie](https://docs.python.org/3/library/os.path.html) functionaliteit voor volgende taken. Kopieer exact de hoofding uit de documentatie, inclusief parameters,...:

- om na te gaan wat de absolute notatie van een gegeven pad is
- om na te gaan of een gegeven pad wel een bestand voorstelt
  - het is dus niet genoeg om na te gaan of het pad bestaat, want dan kan het ook om een directory gaan; je wil nagaan of het pad in kwestie echt een **bestand** voorstelt
- om na te gaan hoe groot een bestand is
- om een gegeven pad te vereenvoudigen zodat onderdelen zoals `.` en `..` weggewerkt worden

.. warning::

   Let op met copy-paste! Het kan zijn dat je anchor karakters meeneemt en dat wil je niet.
