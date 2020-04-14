# Conversie naar syntax
Via `datum->syntax` kan een datum worden omgezet naar syntax. Bijvoorbeeld een lijst kan naar een evaluatie worden omgezet. Dit syntax-object kan de lexicale context overerven van een bestaand syntax-object. Het kan ook source location info krijgen: opnieuw van een bestaand syntax object, of gewoon een reeks getallen die de tekstuele positie voorstellen.

Belangrijk voor transformaties: het datum **mag ook syntax objecten bevatten**! Deze worden dan ingevoegd het geheel, dat recursief wordt omgezet! Kan dan ook worden toegepast op een syntax object op zich, maar doet niets.

.. warning::

   De conversie hangt wat af van de aanwezige datastructuren! Recursief converteren gaat niet altijd zoals verwacht! Zie Racket Reference.

## TODO
mogelijk ook nieuwe syntax properties toe te voegen,... maar dat is geavanceerder dan nodig? zie https://docs.racket-lang.org/reference/stxops.html#%28def._%28%28quote._~23~25kernel%29._datum-~3esyntax%29%29
