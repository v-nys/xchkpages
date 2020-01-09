# Controlestrategieën

Opdrachten zijn niet *one size fits all*. We geven niet alleen multiple choice, of alleen programmeeropdrachten, of SQL scripts. We geven wel technische vakken, dus meestal is er wel een duidelijk onderscheid tussen juiste en foute antwoorden. Een controlestrategie is een probleemspecifieke manier om te controleren of een bepaalde opdracht juist of fout is (of nagekeken moet worden door de lector).

Controlestrategieën kunnen vele vormen aannemen. Ze gaan van simpel (bv. controleer of de file van de student 100% identiek is aan de modeloplossing) tot complex (bv. controleer of een inzending equivalent is met een inzending die in het verleden is goedgekeurd na het toepassen van een reeks compilertransformaties). Ze genereren ook feedbackboodschappen.

Ze kunnen verschillende resultaten opleveren:

* geslaagd voor de controle
* niet geslaagd voor de controle
* nog niet beslist
* niet bereikt (omdat een eerdere oefening) geweigerd is en het geen zin had deze te controleren

# Opdracht

Test eens uit met een SQL file! Veronderstel dat gevraagd wordt om een script dat een tabel `Cursussen` aanmaakt, met één kolom van type `VARCHAR(100)` genaamd `Titel`, karakterset UTF8MB4, verplicht ingevuld. In die tabel worden drie cursussen geplaatst: Programmeren, Databanken en Webtechnologie.

Verder gelden volgende restricties:
{% instructions %}

Aangezien dit geen cursus MySQL is, krijg je meteen de inhoud van de file:

```
CREATE DATABASE ModernWays;
USE ModernWays;
CREATE TABLE Cursussen (
Titel VARCHAR(100) CHAR SET UTF8MB4 NOT NULL
);
INSERT INTO Cursussen (Titel)
VALUES
('Programmeren'),
('Databanken'),
('Webtechnologie');
```

Voor je deze file checkt: introduceer eens een fout. Haal er bijvoorbeeld Databanken uit, verander het datatype van `Titel` van `VARCHAR` naar `CHAR` of iets in die aard. Probeer uit met de fout en je zal merken dat er zinvolle feedback gegeven wordt. Probeer uit zonder fout en je mag naar de volgende pagina.

Let ook op: om deze oefening te checken moet je een ander batch type aanduiden, namelijk het batchtype dat melding maakt van ModernWays en ModernWaysBL.
