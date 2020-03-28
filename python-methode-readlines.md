# readlines
Het gebeurt erg vaak dat elke regel van een bestand (configuratiebestand, databestand,...) één stukje nuttige info bevat en dat deze info niet gespreid is over meerdere regels. Daarom is het erg handig een bestand regel per regel te kunnen inlezen.

Dit doe je met de methode `readlines()` van een file object. Het returntype hiervan is een lijst van strings, één per regel in het bestand. Let op: elke string stelt een regel voor en dat betekent dat er newline karakters aan het einde van deze regel vasthangen!

{% instructions %}
Schrijf een bestandje met de naam `myfile.txt` met daarin enkele regels tekst. Schrijf dan een Python script met de gevraagde naam dat de inhoud van `myfile.txt` toont op je scherm. Het is niet erg als er extra witregels verschijnen tussen de regels met echte inhoud, maar kan je verklaren waarom dit gebeurt?

.. danger::

   Voor de automatische controle probeer je de extra witregels **niet** weg te werken, want de modeloplossing verwacht dit niet!
