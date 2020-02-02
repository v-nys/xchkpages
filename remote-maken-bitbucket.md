# Een remote voor een bestaande repository maken op Bitbucket
Als je tot dit punt in de leerstof bent geraakt, heb je al een lokale repository en een remote. In het [inleidend filmpje](https://youtu.be/9qYwoJ6iz-s) hebben we eerst de remote gemaakt op Bitbucket en hebben we daar dan een versie van aangemaakt op onze lokale machine.

Je hoeft niet te starten vanaf Bitbucket. Als je een repository aanmaakt met `git init`, kan je later een remote toevoegen op Bitbucket.[^1]
[^1]: De remote hoeft niet op **Bitbucket** te staan. Er zijn nog diensten, zoals Github en Gitlab. Je kan zelfs een remote hebben die helemaal niet aan zo'n dienst gelinkt is.

## stap 1: lokale repo aanmaken
Dit zou je al moeten kunnen aan de hand van `git init`.

## stap 2: een "nieuwe repo" aanmaken op Bitbucket
Op Bitbucket geef je aan dat je een nieuwe repository wil maken, zoals op volgende figuur. Het maakt niet uit dat deze repository een kopie is van een bestaande repository. Wat Bitbucket betreft, is hij nieuw.

![Figuur nieuwe repository op Bitbucket]({% pagerepo bitbucket-new-repo.png %})

Je kan kiezen of je repository private of public is, maar voor een bestaande repository kies je best voor **geen README**. Dan hoef je de inhoud van de repository op Bitbucket niet samen te voegen met de inhoud die je lokaal al hebt.

## stap 3: remote toevoegen met het HTTPS-protocol
![Figuur settings remote add met HTTPS]({% pagerepo bitbucket-remote-via-https.png %})

## Opdracht
{% instructions %}
Je hebt al minstens een remote gemaakt en je zal er nog genoeg maken op deze website. Hier is geen opdracht voorzien.

# Voetnoten
