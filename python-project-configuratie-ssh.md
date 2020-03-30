# Project: apparaten configureren via SSH
We zijn op het punt dat we een script kunnen schrijven dat ons als netwerkbeheerders een heleboel werk kan uitsparen.

## Virtuele machine aanmaken om netwerktoegang te simuleren
Volgende filmpjes tonen je stap voor stap hoe je een virtuele machine opzet waarop je je taken als netwerkbeheerder kan uittesten.
[Playlist](https://www.youtube.com/playlist?list=PL4cBafvTnZF9OM8RVW5aVzdAWm31nEmMV)

Mogelijk kan je de eerste vier stappen al zelfstandig uitvoeren. De topics zijn:

1. Ubuntu **server editie** (18.04 LTS) installeren met OpenSSH server
2. SSH keys maken op je **host**machine
3. een folder delen met je virtuele machine
4. port forwarding instellen van je hostmachine naar je guest machine
5. SSH testen in de Python REPL
6. SSH gebruiken in een Python script

## Uitbreiding
Schrijf eerst het script `sshtest.py` uit het zesde filmpje. Doe daarna volgende aanpassingen:

- Maak een file, `hosts_and_ports.txt`.
  - Elke regel van deze file bevat een IPv4-adres gevolgd door een poort, bijvoorbeeld `192.168.0.191:9091`. Zoals typisch is, scheiden we host IP's en poortnummers met een dubbele punt.
- Doorloop in je script elke regel van `hosts_and_ports.txt`.
  - Pas de string aan die je meegeeft aan `subprocess.run` zodat het je voor elke regel in `hosts_and_ports.txt` verbindt met de juiste machine.
- Maak een tweede VM aan (identiek geconfigureerd aan de eerste) en ga na dat je script werkt. Let op: zorg dat je eerste VM aan staat wanneer je de tweede aanzet en voer het script uit als ze allebei aan staan.
  - Je past nog altijd port forwarding toe vanaf 127.0.0.1, maar met een andere poort voor de tweede VM. Je mapt bijvoorbeeld poort 2223 op poort 22 van de tweede VM.
- Test na uitvoering of je script gewerkt heeft door naar beide machines te SSH'en

## Afwerken
{% instructions %}
Check je bestanden in in je repository. Contacteer de lector wanneer je denkt dat je project af is.
