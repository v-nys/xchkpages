# `with`
File objecten (die je van `open` als returnwaarde krijgt) volgen enkele speciale regels.[^1] Dit maakt ze compatibel met een handigere syntax, waardoor je betere foutmeldingen krijgt en niet meer kan vergeten een bestand te sluiten.

## Syntax
In plaats van dit:

```sql
fh = open('myfile.txt')
# hier gebruik je methodes van `fh` om iets te doen met de inhoud
fh.close()
```

schrijf je dit:

```sql
with open('myfile.txt') as fh:
    # indentatie!
    # hier gebruik je methodes van `fh` om iets te doen met de inhoud
# vanaf hier is de file terug gesloten
```

## Oefening
{% instructions %}

## Voetnoten
[^1]: Om het wat preciezer te stellen: file objecten zijn "context managers". Dit zijn objecten met speciale methoden die aan het begin en het einde van een `with`-blok worden opgeroepen. Andere context managers zijn bijvoorbeeld databaseverbindingen, die ook afgesloten moeten worden.
