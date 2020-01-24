# `git fetch`[^1]
Een remote is min of meer een kopie van je project, met een kopie van je logboek. Jouw repository wordt niet automatisch up-to-date gehouden met de remote en de remote wordt niet automatisch up-to-date gehouden met de remote. Met andere woorden, jij kan een set wijzigingen "A" toevoegen aan je logboek, terwijl een collega een set wijzigingen "B" toevoegt aan de remote.

Dat is erg handig, want zo kunnen collega's onafhankelijk van elkaar aanpassingen doen. Het maakt de zaken helaas ook wel wat complexer, want je staat niet constant in verbinding met je collega's die aan hetzelfde project werken. Om na te gaan wat aangepast is op de remote(s), gebruik je het commando `git fetch --all`. De `--all` duidt aan dat de tijdlijnen van het project voor elke remote up-to-date worden gebracht en niet alleen voor één specifieke remote.

## Opdracht
.. important:

   Deze uitleg is nog niet af!

1. Ga naar de Bitbucket web interface voor je repository voor dit vak.
2. Voeg een nieuw bestand, `git-fetch-dummy.txt` toe met daarin alleen de tekst "test".
3. Voer een commit uit via de web interface.
4. Breng je eigen repository op de hoogte van de wijzigingen.
5. Kopieer de boodschap die je krijgt in het tekstbestand voor deze oefening.
6. Stage en commit je tekstbestand.
7. Voer uit: `git pull`
8. Voer uit: `git push`

## Voetnoten
[^1]: Het verhaal hier is wat vereenvoudigd. Deze uitleg doet bepaalde veronderstellingen over "takken" (of *branches*). Later leer je hier meer over en komen we op dit onderwerp terug.
