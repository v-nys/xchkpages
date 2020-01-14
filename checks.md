# Checks
Een controlestrategie voert een reeks "checks" uit om te bepalen of een oefening automatisch geweigerd of aanvaard kan worden. Deze checks zijn in essentie booleaanse expressies: formules die als uitkomst `True` of `False` opleveren. Checks zijn voorzien van enkele toeters en bellen en zijn niet wiskundig "zuiver", maar booleaanse expressies zijn een zeer goede benadering.

Twee soorten checks zijn ingebouwd in het systeem:

* de "nulvoorwaarde", die altijd `True` oplevert
* de negatie, die het resultaat van een andere check omkeert

.. important::

   Er is geen ingebouwde voorwaarde die altijd `False` oplevert. We bouwen geen nieuw wiskundig model op, dus we kunnen de negatie van de nulvoorwaarde gebruiken om `False` te verkrijgen.

Verdere checks kunnen toegevoegd worden, maar maken geen deel uit van de kern van het systeem.

# "Opdracht"
De opdracht bij deze knoop illustreert het gebruik van de nulvoorwaarde.

{% instructions %}
