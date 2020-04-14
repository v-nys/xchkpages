# Converteren van syntax
Hier zijn verschillende procedures voor:

- `syntax->datum` converteert syntax object (wat vergelijkbaar is met een datum met extra informatie) naar een gewoon datum
  - dus alsof `#'` gewoon `'` wordt
- `syntax->list` breekt de syntax op in een lijst van syntax-objecten als `syntax->datum` een lijst zou produceren
- `syntax-e` is vergelijkbaar met `syntax->list` maar hoeft geen lijst terug te geven, werkt ook op andere data (kan bijvoorbeeld gewoon een symbool produceren)

## TODO: dependencies herbekijken!
