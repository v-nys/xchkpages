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

.. tip::

   Git gebruikt een kleurcodering om aan te geven welke wijzigingen in welke fase staan. Indien je kleurenblind bent, kan het de moeite zijn de gebruikte kleuren te veranderen. Ga na via een zoekmachine hoe je de kleuren van Git aanpast voor jouw shell.

# Opdracht
{% instructions %}

1. Controleer dat er geen enkele wijziging aanwezig is in je working directory of staging area.
2. Maak een tekstbestand en zet daarin alleen de tekst "test" (zonder aanhalingstekens).
3. Sla het bestand op.
4. Verlaat het bestand en vraag een overzicht van je wijzigingen. **Bekijk dit en vergelijk met de uitleg op deze pagina.**
5. Voer uit: `git add --all`.
6. Open je bestand opnieuw.
7. Zet op de tweede regel ook "test" (zonder aanhalingstekens).
9. Sla het bestand op.
10. Verlaat het bestand en vraag een overzicht van je wijzigingen. **Bekijk dit en vergelijk met de uitleg op deze pagina.**
11. Kopieer (enkel!) de output, dus niet de regel die je net hebt getypt maar wel alles wat daarop volgt, vanaf het eerste geprinte karakter.
12. Sla de output op in je tekstbestand (overschrijf wat er al stond).
13. Stage en commit je tekstbestand.
14. Voer uit: `git push`.
