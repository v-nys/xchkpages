# De `while` lus
De `while` lus in Python is bijna hetzelfde als het `if`-statement. Het belangrijke verschil is dat, eens het geïndenteerde gedeelte van een `while`-lus is afgewerkt, de test opnieuw wordt uitgevoerd en de lus mogelijk herhaald wordt.

Bijvoorbeeld, om tot 10 te tellen op het scherm:

```
boundary = 10
counter = 1
while counter <= boundary:
    print(counter)
    counter = counter + 1
```

## Oefening
{% instructions %}

Bepaal, zonder gebruik te maken van de wiskundige formule, het aantal bits dat je minimaal voor het netwerkgedeelte van een IP-adres nodig hebt om (minstens) `number_of_host_addresses` adressen te kunnen uitdelen. Denk eraan dat je één speciaal adres voorziet als netwerkadres en één als broadcastadres. Met één bit heb je dus nul hostadressen, met twee bits heb je er twee, met drie bits heb je er zes,...

Test je programma uit door `number_of_host_addresses` in te stellen op een aantal verschillende gehele getalwaarden. Indien het gewenste aantal niet bereikbaar is, `print` dan een foutbericht.
