# Fasen van data bekijken: `git status`
Terwijl je aan het werk bent, moet je goed in de gaten houden in welke fase bepaalde data zich bevindt: working directory, staging area of project history. Anders weet je niet welke data veilig gelogd is en welke je makkelijk kwijt zou kunnen raken. Je kan hiervan een overzicht opvragen met het commando `git status`. **Om een gedetailleerder overzicht te krijgen, gebruiken wij steeds `git status -u`.**

Wanneer je dit commando uitvoert in je Git repository, kan je verschillende boodschappen zien.

* "Untracked files"
  * Dit betekent dat de file in kwestie nog volledig onbekend is voor Git. Er is met andere woorden nog nooit data uit deze file gecommit en er staat ook geen data uit deze file in de staging area. Als je de file wil opvolgen in je logboek, moet je hem eerst *stagen* en dan *committen*.
* "Changes not staged for commit" (gevolgd door nog wat extra tekst **die je voorlopig best negeert**)
  * Dit betekent dat de file in kwestie wel al gekend is voor Git, maar dat hij nieuwe of aangepaste data bevat. Als je deze wijzigingen wil opvolgen in je logboek, moet je de file eerst *stagen* en dan *committen*.
* "Changes to be committed"
  * Dit is een overzicht van je huidige staging area. Als je een commit-operatie uitvoert, maak je deze wijzigingen deel van je projectgeschiedenis.

.. tip::

   Lees de output van dit commando altijd voor je een commit-operatie uitvoert!

.. tip::

   Het kan perfect zijn dat eenzelfde file data bevat die al in de staging area staat en data die alleen maar in de working directory staat. Dezelfde filenaam kan dus verschijnen in verschillende boodschappen van `git status`!

# Opdracht
TODO: vraag paar aanpassingen te doen en betekenis van elke kleur af te leiden; vereist misschien wel wat extra advies voor wie rood-groen kleurenblind is. zie [hier](https://ericasadun.com/2018/07/19/are-you-red-green-color-blind-how-do-you-handle-git-color-coding/)?
