# Format strings

## Basisprincipe
"Format strings" zijn eigenlijk gewoon strings, maar ze worden wat anders genoteerd. Het verschil in notatie staat toe even "uit tekstmodus" te springen, een berekening te doen en die dan op te nemen in de string.

Bijvoorbeeld:

```python
name = input("Hoe heet je?")
print(f"Hallo, {name}!")
```

De string wordt dus voorafgegaan door een `f`. Dit staat voor "format". Binnenin de string kunnen we accolades gebruiken om aan te geven dat wat tussen de accolades staat geen tekst is, maar code. `name` is bijvoorbeeld een naam van een variabele. Die code wordt dan geëvalueerd, wat in het geval van een variabele betekent dat de bijbehorende waarde wordt opgezocht. Het resultaat wordt tenslotte omgezet naar tekst (alsof je er `str()` rond zou zetten) en ingevoegd waar de accolades staan.

Je kan dus ook dit doen:

```python
print(f"Het drievoud van 7 is {3 * 7}.")
```

Het maakt niet uit hoe complex de inhoud van de accolades is. Als er maar een resultaat uit komt.

## Bijkomende formattering
Door vlak voor de sluitende accolade een dubbele punt te zetten, kan je een "format specifier string" meegeven. Als je dit doet, is het niet meer alsof je code gewoon wordt omgezet naar tekst via `str()`, maar wordt ze slimmer verwerkt.

Je vindt een hele lijst vooreelden terug op [pyformat.info](https://pyformat.info/). De voorbeelden waar "New" bij staat worden getoond zonder `f` voor de string en met `.format()` na de string, maar je kan dezelfde syntax toepassen in format strings.

Je hoeft niet alle mogelijke formaten uit het hoofd te leren. Je hoeft er op dit punt zelfs **geen** specifieke te leren. Je moet wel het gebruik van de dubbele punt binnen de accolades kunnen herkennen en met de informatie op [pyformat](https://pyformat.info/) simpele formattering kunnen toepassen (d.w.z. formattering waarvoor de code letterlijk op de website staat).

.. important::

   Format strings zijn leesbaarder en sneller dan andere manieren om strings weer te geven (bijvoorbeeld door ze aan elkaar te plakken met `+`). We gebruiken ze niet in alle voorbeelden, zodat je de leerstof in een volgorde naar eigen keuze kan behandelen, maar we bevelen ten sterkste aan dat je altijd format strings gebruikt en de alternatieven zo snel mogelijk achter je laat.

## Oefening
{% instructions %}

Schrijf volgende `print`s met format strings. Schrijf een `print` van een format string per regel en volg de afspraken die we eerder hebben gemaakt rond de schrijfwijze van strings. Schrijf de `print`-instructie rond de format string en raadpleeg [pyformat](https://pyformat.info/)!

1. Een print met daarin `datetime.datetime.now()` die je op 9 maart 2020 zou tonen: `Het is vandaag 09-03-2020`. Om dit te testen moet je eerst `import datetime` schrijven.
2. Een print die de tekst "README" middenin een string van 80 karakters plaatst.

De output van je tweede print zou dit moeten zijn:
```text
                                     README                                     
```
