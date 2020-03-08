# `input`
Veel scripts zijn niet volledig automatisch. Ze vragen de gebruiker af en toe een beslissing te nemen, informatie aan te reiken,...

Om deze taken uit te voeren in een console applicatie (en dus in alle scripts die wij zullen schrijven), voorziet Python de `input`-functie. Deze heeft één parameter: de tekst die aan de gebruiker wordt getoond. Ze heeft ook een resultaat: de tekstvoorstelling van wat de gebruiker heeft ingetypt, dus een string.

Voorbeeldgebruik:

```python
name = input('Hallo, wat is jouw naam?')
print("Dag " + name + "!")
```

Als je iets anders wil inlezen dan een stuk tekst, lees je eerst tekst in en verwerk je die tekst tot een waarde van het juiste type.

Bijvoorbeeld:

```python
age = int(input('Wat is je leeftijd?'))
age_in_days = age * 365
print("Je bent minstens " + str(age_in_days) + " dagen oud!")
```

.. warning::

   Online kom je soms `raw_input` tegen. Dit is een constructie uit Python 2, terwijl wij hier met Python 3 werken. `raw_input` deed in Python 2 precies wat `input` hier doet.

Zie ook Spronck, 5.2.4 (p.42).

## Oefening
{% instructions %}

Schrijf een script met de gevraagde naam. Dit script vraagt twee getallen van de gebruiker en toont de som van deze getallen. Een interactie ziet er als volgt uit (het symbool `>` wijst erop dat de gebruiker iets intypt):

```python
Wat is het eerste getal?
> 7
Wat is het tweede getal?
> 4
De som van deze getallen is 11.
```
