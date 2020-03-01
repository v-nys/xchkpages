# Outline Python project 1
In het eerste project zullen we zien hoe we Python kunnen gebruiken om veilig apparaten op afstand aan te spreken. In grote lijnen zijn er drie stappen:

1. configuratiebestanden uitlezen en de geldigheid ervan nagaan
2. verbinding maken van op afstand met behulp van SSH
3. instructies uitvoeren

## Configuratiebestanden
We zullen drie configuratiebestanden gebruiken:

1. een bestand met de IP-adressen van de apparaten die aangesproken zullen worden (in IPv4-formaat)
2. een bestand met logingegevens per apparaat
3. een bestand met uit te voeren commando's op de apparaten

## Structuur scripts
We zullen een paar scripts schrijven en deze combineren. Zo kunnen we in eventuele latere projecten gebruik maken van de apart ontwikkelde onderdelen.

- één om na te gaan of een IPv4-adres geldig is binnen het publieke bereik
- één om te testen of een IPv4-adres momenteel bereikbaar is met behulp van `ping`
- één om logingegevens en uit te voeren commando's te gebruiken in een SSH-connectie
- één om connecties op te zetten voor elk te configureren apparaat

{% instructions %}
