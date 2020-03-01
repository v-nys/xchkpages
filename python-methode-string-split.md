# split
Vaak is het handig een stuk tekst op te breken in meerdere stukken tekst. Bijvoorbeeld de laatste adresregel op een brief in een postcode en een gemeentenaam. Dit noemen we "splitsen" van een string. Je kan dit zelf doen met behulp van de methode `split`, uitgevoerd op de tekst die je wil splitsen, met als argument de tekst die twee "belangrijke" stukken tekst verbindt.

Bijvoorbeeld: `"2800 Mechelen".split(" ")` levert je `["2800", "Mechelen"]`. De spatie wordt gebruikt om de string "in stukken te kappen". Deze twee stukken staan in een lijst en de spatie is **niet meer aanwezig** in deze stukken.

## Oefening
{% instructions %}
Schrijf een bestand met de gevraagde naam. Schrijf daarin code om `"Hello, World!"` om te zetten in `["Hello","World!"]` en dat resultaat ook te printen.
