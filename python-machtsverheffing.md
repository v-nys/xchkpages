# Machtsverheffing in Python
Machtsverheffing is een operatie waarbij je een getal een aantal keer met zichzelf vermenigvuldigt. Bijvoorbeeld 2³ (twee tot de derde macht) is 8 omdat 2 * 2 * 2 8 is. Bijvoorbeeld 4² (vier tot de tweede macht) is 16 omdat 4 * 4 16 is. Vijf tot de vierde macht is 5 * 5 * 5 * 5, dus 625, enzovoort.

In Python schrijf je dit met twee sterretjes, dus bovenstaande voorbeelden worden:

- `2**3` (twee tot de derde macht)
- `4**2` (vier tot de tweede macht)
- `5**4` (vijf tot de vierde macht)

Machtsverheffing komt van pas wanneer we rekenen met IP-adressen.

.. note::

   Machtsverheffing vindt nog plaats **voor** vermenigvuldiging en deling. Dat wil bijvoorbeeld zeggen dat `2**3*4` gelijk is aan `(2**3)*4` en niet aan `2**(3*4)`.

## Oefening
{% instructions %}

Print in het gevraagde bestand **op exact drie regels** volgende drie expressies uit (dus doe de berekening en zet er een print rond):

- zeven tot de zesde macht
- de som van vier tot de derde macht en negen tot de tweede macht
- het product van zeven tot de vierde macht en 12 tot de derde macht
