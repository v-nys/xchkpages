# `git status` en `.gitignore`
`.gitignore` maakt bestanden als het ware onzichtbaar voor Git. Het commando `git status` toont welke bestanden in de working directory, staging area of projectgeschiedenis staan.

Bijgevolg: als je `git status -u` (of gewoon `git status`) uitvoert, zal je géén bestanden zien die genegeerd worden met `.gitignore`. Er zal niet eens bij staan dat ze "untracked" zijn, ze zijn gewoon onzichtbaar.

Let op, dit is wel alleen zo als de bestanden ook niet voorkomen in de projectgeschiedenis. Als ze daar *wel* in staan, worden ze niet beïnvloed door `.gitignore`. Wijzigingen in de working directory zullen dus vermeld worden (in de groep "Changes not staged for commit") en je kan de files opnieuw stagen.

## Opdracht
.. important::

   Als je opdracht enkel geweigerd wordt "indien `false`" en aanvaard wordt "indien `true`", betekent dat dat je gewoon op de knop mag klikken nadat je de tekst hebt gelezen.

{% instructions %}
