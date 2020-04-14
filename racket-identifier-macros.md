# Identifier macros
- hebben de vorm van identifiers
- expanderen desondanks
- geen echt nieuwe concepten nodig, gewoon slim matchen
  - een patroon `val` matcht met op het even welke syntax-expressie
    - dus ook complexere zaken zoals iets tussen parens
    - maar kan `(identifier (syntax val))` als guard expressie gebruiken in bijvoorbeeld `syntax-case`

## TODO
dependencies: minstens `syntax-case`
nog iets interessants in 16.1.6-16.1.8?
