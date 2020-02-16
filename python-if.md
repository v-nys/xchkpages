# `if`
Zie [Spronck](http://www.spronck.net/pythonbook/pythonboek.pdf), 6.2.1 voor de algemen uitleg.

## Opmerking
Binnenin een `if`-statement mag je gerust nog een `if`-statement schrijven. Je moet daarbij wel de indentatie vergroten. Bijvoorbeeld:

```python
if 3 > 2:
    if 7 > 4:
        print('dit wordt uitgevoerd!')
```

Als je bovenstaande code in een scriptje plaatst, zal je zien dat de boodschap nog steeds wordt afgeprint.
