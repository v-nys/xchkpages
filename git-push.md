# Data versturen naar remote: `git push`
(uitleg doen voor remote waar we *schrijfrechten* op hebben!)
Een remote is min of meer een kopie van je project, met een kopie van je logboek. Jouw repository wordt niet automatisch up-to-date gehouden met de remote en de remote wordt niet automatisch up-to-date gehouden met de remote. Met andere woorden, jij kan een set wijzigingen toevoegen aan je logboek, maar deze verschijnen niet automatisch op de remote.

Om je wijzigingen te versturen naar de remote `origin`, gebruik je het commando `git push`.

.. warning::

   Deze uitleg veronderstelt dat het lokale logboek voorligt op het logboek van de remote. Met andere woorden: in het lokale logboek staat alles wat in het logboek van de remote staat en méér. De zaken worden wat complexer wanneer beide logboeken unieke informatie bevatten. Met andere woorden: voorlopig bestaat er maar één manier om data op de remote te wijzigen en dat is `git push`!

## Opdracht
{% instructions %}
TODO: voorzie strategie om na te gaan dat file bestaat.
Creëer het gevraagde tekstbestand en zorg dat het op je remote `origin` staat. De inhoud is onbelangrijk.
