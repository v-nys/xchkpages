# Data afhalen van remote: `git pull` (met één tak die voor ligt op de jouwe)
.. warning::

   Deze uitleg veronderstelt dat je niet hebt afgeweken van de cursus. In het bijzonder wordt hier verondersteld dat je nog geen gebruik hebt gemaakt van branches. Als je niet weet wat branches zijn, heb je er waarschijnlijk nog maar één en volstaat de uitleg hieronder.

Met `git push` stuur je jouw eigen aanpassingen naar een remote. Je gebruikt het wanneer jouw logboek **voor** ligt op het logboek van de remote. Het kan ook andersom. Als het logboek van je remote voorligt op je eigen logboek, kan je je eigen logboek up-to-date brengen met `origin` door middel van `git pull`.

.. hint::

   Het kan zijn dat je logboek niet gelijk staat, niet voor loopt en niet achter loopt. Maar die situatie zal niet ontstaan tot je ze aankan indien je de instructies goed volgt. Lig er nu niet wakker van.

# Oefening
{% instructions %}

Om deze oefening te maken, doe je volgende zaken:

1. Zorg ervoor dat je remote `origin` volledig up-to-date is met je lokale repository door `git push` uit te voeren.
2. Maak op je remote het bestand met de naam aan die vermeld wordt in de gegenereerde instructies hierboven.
  - Indien je Bitbucket gebruikt, kan je dat doen met de knop "Add file" op de screenshot hieronder.
    - Zorg er dan op het volgende scherm zeker voor dat je de bestandsnaam ingeeft exact zoals hij hierboven gevraagd wordt.
    - Je mag deze file leeg laten. Het maakt niet uit wat je er in plaatst.
    - Klik daarna onderaan op de knop "Commit".
3. Nu ligt het logboek van je remote `origin` voor op dat van je lokale repository. Breng je lokale repository up-to-date met het juiste commando.
4. Als het updaten goed uitgevoerd is, zie je normaal onder andere de output `Updating` gevolgd door een commit hash.
5. Overschrijf de inhoud van het tekstbestand dat je hebt gemaakt met de regel onder de output `Updating` gevolgd door een commit hash. Dus kopieer de regel **na** de regel die begint met "Updating" en plak hem **volledig over** wat al in het bestand stond (het kan zijn dat het bestand leeg was). (**Tip:** De regel in kwestie eindigt op de letters "rd".)
6. Maak een nieuwe commit en stuur de wijzigingen terug naar `origin`.

![file toevoegen via Bitbucket web interface]({% pagerepo add-file-bitbucket-web-interface.png %})
