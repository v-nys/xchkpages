# Command line taken uitvoeren met `subprocess.run`
De module [`subprocess`](https://docs.python.org/3/library/subprocess.html) bevat allerlei functionaliteit om een **subproces** op te starten. Dat betekent: een programma dat door je eigen programma (je script) wordt opgestart.

Deze module bevat erg veel opties, maar meestal wil je gewoon gebruik maken van de functie `run()`. Deze functie heeft als eerste parameter een uit te voeren commando. Wij zullen het gewoon houden op de stringvoorstelling van een commando dat je zou intypen, zonder pipes of redirection.

Wij zullen, tenzij anders vermeld, volgende argumenten voorzien en de rest op hun defaults laten staan:

- `capture_output=True`
  - hiermee kunnen we de ouput achteraf uit het resultaat opvragen
- `text=True`
- `stdin`: een of ander tekstbestand dat we openen in een `with`-blok (tenzij we geen input willen lezen); het zal zijn alsof we deze input intypen nadat het commando is uitgevoerd

Het resultaat van een oproep van `subprocess.run` zal een `CompletedProcess` zijn. Dit is een object waar we volgende informatie uit zullen kunnen ophalen:

- de return code van het uitgevoerde proces, via `returncode`; return codes zijn een typisch UNIX-mechanisme om aan te geven of een proces succesvol heeft uitgevoerd of niet
- de uitvoer van het uitgevoerde proces, via `stdout`
- de error stream van het uitgevoerde proces, via `stderr`

{% instructions %}
