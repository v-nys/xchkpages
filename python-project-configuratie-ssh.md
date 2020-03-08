# Project: apparaten configureren via SSH
Deze inhoud is nog niet volledig af, maar als je hier nu al bent, kan je waarschijnlijk al een goede poging doen. Deze instructies zijn nog niet volledig getest!

## Uitleg SSH op Windows
- [putty installeren](https://www.putty.org/)
- [shell account aanmaken bij provider](https://shells.red-pill.eu/) (hoeft niet als je al SSH-toegang hebt tot een andere server)
- [key pair aanmaken op server](https://confluence.atlassian.com/bitbucketserver/creating-ssh-keys-776639788.html) (instructies voor Linux volgen, vanaf stap 3: "Generate a new key")
- key pair naar eigen computer kopiëren
  - [key pair in Putty importeren](https://devops.ionos.com/tutorials/use-ssh-keys-with-putty-on-windows/#use-existing-public-and-private-keys)
- [putty gebruiken vanaf command line](https://my.kualo.com/knowledgebase/?kbcat=0&article=890): dit zou moeten toelaten om in te loggen op de testserver

## SSH uit Python
- schrijf script `sshtest.py`
  - maak gebruik van subprocess om in te loggen op de testserver nadat dit manueel gelukt is
  - voer commando `touch testfile.txt` uit op remote machine door het via standard input mee te geven
  - einde script
- verbind via Putty met de testserver
- kijk na of het bestand er ook staat
  - zo nee: pas je script aan zodat uitvoer en foutmeldingen van het SSH-subproces geprint worden

## Nog verder
- schrijf een script, `project1.py`
  - toon voor elke regel in `ips.txt` tekst: "Ik ga verbinden met <IP-adres>"
  - print het SSH-commando dat je zou moeten intypen om de verbinding te maken
  - print alle commando's die je op de server zou uitvoeren
  - print `"machine geconfigureerd"`
