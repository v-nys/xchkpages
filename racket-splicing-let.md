# splicing/let
- Wordt omschreven in uitleg over macro's van de Racket reference, maar is niet noodzakelijk specifiek voor macro's.
- Is eigenlijk een een `let` die "weggewerkt" wordt.
  - Kan bijvoorbeeld één `splicing-let` schrijven, in de body meerdere keren `define` gebruiken en het is alsof die definities gewoon voorkwamen op het niveau waar de `splicing-let` staat.
