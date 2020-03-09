# Command line taken uitvoeren met `subprocess.run`
De module [`subprocess`](https://docs.python.org/3/library/subprocess.html) bevat allerlei functionaliteit om een **subproces** op te starten. Dat betekent: een programma dat door je eigen programma (je script) wordt opgestart.

Deze module bevat erg veel opties, maar meestal wil je gewoon gebruik maken van de functie `run()`. Deze functie heeft als eerste parameter een uit te voeren commando. Wij zullen het gewoon houden op de stringvoorstelling van een commando dat je zou intypen, zonder pipes of redirection.

Wij zullen, tenzij anders vermeld, volgende argumenten voorzien en de rest op hun defaults laten staan:

- `capture_output=True`
  - hiermee kunnen we de ouput achteraf uit het resultaat opvragen
- `text=True`
- `shell=True`
  - dit betekent dat we zaken kunnen uitvoeren die in onze gewone shellomgeving zouden kunnen uitvoeren
- `stdin`: een of ander tekstbestand dat we openen in een `with`-blok (tenzij we geen input willen lezen); het zal zijn alsof we deze input intypen nadat het commando is uitgevoerd

Het resultaat van een oproep van `subprocess.run` zal een `CompletedProcess` zijn. Dit is een object waar we volgende informatie uit zullen kunnen ophalen:

- de return code van het uitgevoerde proces, via `returncode`; return codes zijn een typisch UNIX-mechanisme om aan te geven of een proces succesvol heeft uitgevoerd of niet
- de uitvoer van het uitgevoerde proces, via `stdout`
- de error stream van het uitgevoerde proces, via `stderr`

## Oefening
{% instructions %}

Schrijf een script dat een IP-adres of online domein twee keer probeert te bereiken met het `ping`-commando. Vervolgens toont het de return code, uitvoer en errors van het afgewerkte proces.

Op OSX gebruik je de optie `-c` om aan te geven hoe veel keer je wil pingen. Op Windows is dat `-n`.

Een voorbeeld van wat je op je scherm zou kunnen zien:

```text
return code: 0

uitvoer: b'PING www.google.be(ams16s32-in-x03.1e100.net (2a00:1450:400e:80c::2003)) 56 data bytes\n64 bytes from ams16s32-in-x03.1e100.net (2a00:1450:400e:80c::2003): icmp_seq=1 ttl=56 time=73.5 ms\n64 bytes from ams16s32-in-x03.1e100.net (2a00:1450:400e:80c::2003): icmp_seq=2 ttl=56 time=33.3 ms\n\n--- www.google.be ping statistics ---\n2 packets transmitted, 2 received, 0% packet loss, time 1001ms\nrtt min/avg/max/mdev = 33.342/53.417/73.493/20.075 ms\n'

errors: b''
```
