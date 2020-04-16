- resultaat van een programma: een `playlist`
  - speciale naam: `vid`
    - kan geïmporteerd worden uit andere video files
    - is een `playlist` struct (dependency!)
- een `producer` creëert een (nog niet gerenderde) video
  - heeft properties, zoals lengte (in een map)
  - bv. `color`
  - bv. `clip`
  - procedures om deze producers te maken kunnen nog extra parameters hebben
  - beetje onduidelijk uit docs: één producer kan meerdere streams produceren?
    - betekent dit audio + video stream of nog iets anders?
- `filter`s kunnen gekoppeld worden aan producers (en leveren terug producers); gekoppeld via `attach-filter`
- M.O.: `clip` producer werkt zowel met video files als image files
  - helaas niets voor `pict`s?
  - **maar** er is wel een `struct-type-property?` om aan te geven dat iets geconverteerd kan worden naar video

# producers combineren
- sequentieel: `playlist`s (`vid` is er een, dus compositioneel)
  - er is een functie `playlist`
  - `playlist`s **zijn** producers!
- parallel: `multitrack`s

.. warning::

   In Video is definitie modulebreed. In Racket (en veel afgeleide talen) moet definitie voor gebruik komen.

# transities
- komen in een playlist, tussen twee te combineren stukjes
  - zijn op zich geen producers
- hebben ook keyword syntax maar ben niet geheel overtuigd van nut hiervan?

# multitracks en merges
- multitrack is het geheel
- merge is de tegenhanger van transitie
- ook een sleutelwoord voor

```
#lang video
(multitrack ; om het hele spel te creëren
 (blank #f) ; er moet iets zijn om mee te mergen (oneindig lang)
 (composite-merge 0 0 1/2 1) ; neem "bovenop" de blank half scherm in
 (clip "spinning_square.mp4") ; dit wordt "bovenop" hierboven genoteerde stuff gezet
 (composite-merge 1/2 0 1/2 1) ; neem bovenop al ↑ nog half scherm in
 (clip "dropping_ball.mp4")) ; en zet daar dit
```

# properties
- aanwezig voor **elk object** in Video (dus producers,...)
- sommige zijn automatisch geassocieerd (bv. afmetingen van een afbeelding als "domme" producer; verschillende producers hebben verschillende innate properties)
- `set-property` is vrij van side effects, evenals `remove-property`

# algemeen
- `external-video`: krijgt een module path (dependency!) naar een andere video file, evalueert tot de `vid` van die module
- `chapter`: gerenderde video's hebben een "chapters list" → dit als wrapper gebruiken rond producer zorgt dat dat stukje video in die lijst komt
