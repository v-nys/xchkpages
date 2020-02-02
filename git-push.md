# Data versturen naar remote: `git push`

.. warning::

   Deze uitleg veronderstelt dat je schrijfrechten hebt op de remote die je gebruikt. Als je de remote zelf hebt aangemaakt, is dat normaal het geval. Als iemand anders je toegang heeft gegeven, kan het zijn dat dit niet zo is.

Een remote is min of meer een kopie van je project, met een kopie van je logboek. Jouw repository wordt niet automatisch up-to-date gehouden met de remote en de remote wordt niet automatisch up-to-date gehouden met de remote. Met andere woorden, jij kan een set wijzigingen toevoegen aan je logboek, maar deze verschijnen niet automatisch op de remote.

Om je wijzigingen te versturen naar de remote `origin`, gebruik je het commando `git push`. Dit is eenvoudig als het lokale logboek voorligt op het logboek van de remote. Met andere woorden: als in het lokale logboek alles staat wat in het logboek van de remote staat en méér. De zaken worden wat complexer wanneer beide logboeken unieke informatie bevatten. Met andere woorden: voorlopig bestaat er maar één manier om data op de remote te wijzigen en dat is `git push`!

.. danger::

   Als je gebruik maakt van onder andere de commando's `git branch`, `git pull` of als je aanpassingen doet via de web interface van bijvoorbeeld Bitbucket, kan het zijn dat jouw logboek niet meer gewoon "voorligt" op dat van je remote. Gebruik deze commando's dus **niet** tot je ze grondig bestudeerd hebt, want anders bestaat de kans dat `git push` niet meer zal werken.

## Opdracht
Creëer het gevraagde tekstbestand en zorg dat het op je remote `origin` staat. De inhoud is onbelangrijk.
{% instructions %}
