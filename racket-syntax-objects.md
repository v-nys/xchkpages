# Syntax objecten
Syntax objecten stellen syntax voor. In veel programmeertalen is syntax alleen wat je typt, of wat wordt geproduceerd door een aparte preprocessor. Racket daarentegen kan geschreven syntax herschrijven tot nieuwe syntax, nog voor het programma wordt uitgevoerd. Je kan met andere woorden code schrijven die andere code schrijft.

Een syntax object bestaat uit verschillende onderdelen:

- een S-expressie die de code voorstelt (dependency!)
- informatie over de broncode: bronbestand, regelnummer, karakternummer
  - opvraagbaar via procedures `syntax-source`, `syntax-line`, `syntax-column` respectievelijk
- informatie over lexical scope

## Shorthand
In plaats van `syntax` kunnen we ook `#'` schrijven. Dit is gewoon korter. Wel opletten: dit wordt gevolgd door één S-expressie. Als er parens na komen, maken die deel uit van de geproduceerde syntax! Ze kunnen normaal niet dienen om te groeperen!

## TODO
- https://docs.racket-lang.org/reference/stx-patterns.html#%28form._%28%28lib._racket%2Fprivate%2Fstxcase-scheme..rkt%29._syntax%29%29 -> wat hier uit halen? Wat met bindingen?
- informatie over lexical scope aanvullen
- dependencies! S-expressies en datums, procedures en hun oproepen
