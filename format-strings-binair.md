# Format strings voor weergave in binair

## Basis
Een manier om getallen binair weer te geven is met format strings. De syntax hiervoor is simpel: gebruik `b` als format specifier.

Bijvoorbeeld:

```python
print(f"85 in binaire notatie is {85:b}")
```

## Opvullen
Als je binaire strings toont, is dat vaak in groepjes van een bepaalde lengte (bijvoorbeeld 8). Omdat de binaire voorstelling van bijvoorbeeld `3` gewoon `11` is, moet je soms opvullen met nullen. Dat doe je door voor de `b` eerst een `0` te schrijven en dan de gewenste breedte. Bijvoorbeeld:

```python
print(f"3 genoteerd als byte is {3:08b}")
```

## Oefening
{% instructions %}
