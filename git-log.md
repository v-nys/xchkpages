# Je logboek bekijken: `git log`
Een Git repository is als een logboek. Dat houdt in dat je kan terugbladeren. Dat is ook zo. Je kan je projectgeschiedenis bekijken met het commando `git log`.

In onderstaande figuur zie je de uitvoer van `git log` in de repository waarin ik deze cursus bijhoud.

![voorbeeldoutput git log]({% pagerepo output-git-log.png %})

Merk de herhalende structuur op. Elk blokje is een **commit**. Zie dit als een tekstje in je logboek, of als een checkpoint die je hebt aangemaakt. Merk de verschillende onderdelen van één commit op (kijk telkens links van het blauwe cijfer):

1. Dit is de "**commit hash**". Dit is een unieke code die wordt afgeleid uit alle data in je repository op het moment dat een commit operatie wordt uitgevoerd. De commit hash is een beetje als een nummer dat een bepaald punt in je logboek uniek aanduidt. Waarom dan niet gewoon tellen vanaf 1? Dat heeft er mee te maken dat jij niet altijd de enige bent die aan je project werkt. Als jij iets toevoegt na nummer 1 en je collega voegt iets anders toe, is het niet meteen duidelijk welke aanpassingen nummer 2 moeten krijgen. Op de klok kan je niet rekenen, want twee computers hebben twee verschillende klokken.[^1]
2. Dit is de naam van de persoon die de commit operatie heeft uitgevoerd. Dit is de naam die je hebt ingegeven toen je Git voor het eerst hebt geconfigureerd (met het commando `git config`).
3. Dit is het e-mailadres dat je hebt ingegeven toen je Git voor het eerst hebt geconfigureerd. Zo kan iemand die vragen heeft bij iets dat je op een bepaald tijdstip hebt veranderd in de code je contacteren.
4. Dit is het tijdstip waarop de gebruiker de commit operatie heeft uitgevoerd. Ook de tijdzone staat erbij vermeld.
5. Dit is de **commit message**. Met andere woorden, het bericht dat je hebt meegegeven toen je de commit creëerde. Hoe duidelijker je commit messages, hoe makkelijker je achteraf je geschiedenis kan doorzoeken.
6. Dit stukje informatie kunnen we nog niet volledig uitleggen zonder te spreken over "branches" en "remotes". We bekijken meer mogelijkheden van `git log` later.

# Oefening
{% instructions %}

## Vraag 1
Hoe noemen we de code die wordt afgeleid uit de code in je repository op het moment van een commit?

## Vraag 2
Er verschijnt een nieuw blokje in je geschiedenis na het uitvoeren van welk commando dat je al kent? Antwoord in twee woorden (het eerste is "git", zonder aanhalingstekens)

## Vraag 3
Hoe noemen we de boodschap uitlegt wat je op een bepaalde checkpoint hebt aangepast?

# Voetnoten
[^1]: Dit is niet de enige reden waarom dit lastig zou liggen. Branches, die we later zullen zien, maken het nog moeilijker een stijgende reeks getallen te gebruiken.
