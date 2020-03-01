# `if`
Zie [Spronck](http://www.spronck.net/pythonbook/pythonboek.pdf), 6.2.1 en 6.2.2 voor de algemene uitleg.

## Geneste `if`
Binnenin een `if`-statement mag je gerust nog een `if`-statement schrijven. Je moet daarbij wel de indentatie vergroten. Bijvoorbeeld:

```python
if 3 > 2:
    if 7 > 4:
        print('dit wordt uitgevoerd!')
```

Als je bovenstaande code in een scriptje plaatst, zal je zien dat de boodschap nog steeds wordt afgeprint.

## Meer over indentatie
Indentatie kan de betekenis van een `if` beïnvloeden. Ze bepaalt namelijk wat binnen de `if` valt en wat niet.

Dit werkt:
```python
x = 4.5
if x == 5:
    print("x is 5")
if x > 4:
    print("x is groter dan 4")
if x < 6:
    print("x is kleiner dan 6")
```

Dit werkt ook:
```python
x = 4.5
if x == 5:
    print("x is 5")
    if x > 4:
        print("x is groter dan 4")
        if x < 6:
            print("x is kleiner dan 6")
```

Toch betekenen ze niet hetzelfde. **Kan je dit verklaren?**

## Oefening
{% instructions %}
Schrijf een scriptje met de gevraagde naam. Dit scriptje start door vier variabelen aan te maken, `byte1`, `byte2`, `byte3` en `byte4`. Je plaatst hierin gehele getalwaarden naar keuze. Daarna gebruik je `if`s om precies één van volgende boodschappen te printen:

- `"de vier bytes vormen geen geldig IPv4-adres"`
- `"de vier bytes vormen een IPv4-adres in het bereik 10.0.0.0/8"`
- `"de vier bytes vormen een IPv4-adres buiten het bereik 10.0.0.0/8"`

Als je al op de hoogte bent van `else` en `elif`, doe het dan toch nog even zonder.
