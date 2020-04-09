# Project: apparaten configureren via SSH
We zijn op het punt dat we een script kunnen schrijven dat ons als netwerkbeheerders een heleboel werk kan uitsparen.

.. danger::

   Sommige studenten krijgen een `FileNotFoundError: [WinError 2] The system cannot find the file specified` wanneer ze het SSH-subproces proberen te starten. Dit komt (hoogstwaarschijnlijk) door het gebruik van een 32-bits installatie van Python op een 64-bits Windows. Herinstalleer Python dan van [deze pagina](https://www.python.org/downloads/windows/) en kies voor Python 3.8.2, Windows x86-64 executable installer.

## Virtuele machine aanmaken om netwerktoegang te simuleren
Volgende filmpjes tonen je stap voor stap hoe je een virtuele machine opzet waarop je je taken als netwerkbeheerder kan uittesten.
[Playlist](https://www.youtube.com/playlist?list=PL4cBafvTnZF9OM8RVW5aVzdAWm31nEmMV)

.. warning::

   In het derde filmpje staat er al een mapje `/home/ubuntussh/.ssh` op je VM. Normaal heb je dat niet na een nieuwe installatie. Los op door een mapje aan te maken: `mkdir .ssh`

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
  - Let hierbij op dat je poortnummer niet gevolgd wordt door een newline.
- Maak een tweede VM aan (identiek geconfigureerd aan de eerste) en ga na dat je script werkt. Let op: zorg dat je eerste VM aan staat wanneer je de tweede aanzet en voer het script uit als ze allebei aan staan.
  - Je past nog altijd port forwarding toe vanaf 127.0.0.1, maar met een andere poort voor de tweede VM. Je mapt bijvoorbeeld poort 2223 op poort 22 van de tweede VM.
- Test na uitvoering of je script gewerkt heeft door naar beide machines te SSH'en.
  - Als je aan het testen bent kan je altijd `commands.txt` aanpassen om nieuwe bestanden aan te maken en kan je het resultaat van `subprocess.run` afprinten (bv. `print(completed)`) om eventuele foutmeldingen te zien te krijgen.

## Afwerken
{% instructions %}

Check je bestanden in in je repository. Je oefening wordt sowieso aanvaard, maar omdat ze behoorlijk complex is, betekent dat niet dat ze juist is. Contacteer de lector wanneer je denkt dat je project af is.
