# `close`
Nadat je een bestand hebt gebruikt, moet je het sluiten. Als je dat vergeet, kunnen er onverwachte resultaten optreden. Indien je bijvoorbeeld data naar een bestand hebt geschreven en het niet hebt gesloten, zal er normaal gezien niets in het uiteindelijke bestand staan.

## Syntax
`close` is een methode van het file object dat je krijgt via `open`. Met andere woorden:

```python
fh = open('myfile.txt')
# hier gebruik je methodes van `fh` om iets te doen met de inhoud
fh.close()
```

{% instructions %}
