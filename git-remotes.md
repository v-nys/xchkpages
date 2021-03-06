# Remotes (1)
Een Git repository is als een project met een logboek. Van dat project met logboek kunnen meerdere **kopieën** bestaan. Dit heeft belangrijke voordelen:

* minder risico op verlies van het project
* collega's kunnen aanpassingen doen in hun eigen versie van het logboek
  * het is ook offline mogelijk
  * achteraf kunnen de aanpassingen weer samengevoegd worden met de andere kopieën van het logboek
  * dit laat ook toe te experimenteren

Een **remote** is een kopie waarvan onze eigen Git repository op de hoogte is. Elke remote heeft een naam en een adres, zodat we kunnen spreken over een bepaalde kopie en zodat we deze kopie kunnen contacteren, bijvoorbeeld om updates aan de remote in ons eigen project te integreren of om onze eigen verbeteringen te delen. De naam van een remote hoort niet bij de remote zelf; het is de manier waarop **onze** repository naar een andere repository verwijst.

.. warning::

   Strikt gesproken *hoeft* een remote geen "kopie" te zijn. Je kan met de hand repositories toevoegen als remote, maar ik ken geen reden om dat te doen. Het zou alleen tot verwarring leiden.

.. warning::

   Niet elke kopie van een repository is een remote van die repository. Als B en C allebei gestart zijn als een kopie van A, kan je zeggen dat B en C kopieën van elkaar zijn, maar ze zijn daarom niet op de hoogte van elkaars bestaan. Met andere woorden, B en C zijn kopieën, maar zijn geen remotes van elkaar.

## Voorbeeld
Onderstaande figuur toont drie repositories. Wij zullen spreken over `A`, `B` en `C`. `B` en `C` hebben `A` als remote, maar `A` heeft geen enkele remote. Verder gebruikt `B` niet de naam "A" om te verwijzen naar `A`, maar wel "origin". `C`, daarentegen, gebruikt voor `A` de naam "MasterCopy". Dat kan omdat de naam van een remote niet bij de remote zelf hoort. `B` en `C` weten niets over elkaar, dus het zou perfect mogelijk zijn om `B` ook naar `A` te laten verwijzen als "MasterCopy" (of `C` naar `A` als "origin").

![drie repositories in verbinding]({% pagerepo remotes-example.png %})

## Speciale remote: `origin`
Vaak is er een duidelijke "master copy" van het project. Dit is bijvoorbeeld de repository op de server van het bedrijf waarin je werkt. **Zuiver technisch bekeken is dit gewoon een remote zoals een andere**, maar ze speelt een bijzondere rol. Het is de plaats waar onze code oorspronkelijk vandaan komt en normaal ook de plaats waar we onze eigen updates terug naartoe zullen sturen. Deze remote wordt volgens afspraak `origin` genoemd.

.. tip::

   Deze afspraak is wijdverspreid. Als je bijvoorbeeld een eigen kopie maakt van een bestaande repository, zal die bestaande repository voor jou automatisch `origin` heten.

.. danger::

   Wij gaan er voorlopig van uit dat de repository op jouw machine maximum één remote heeft en dat deze origin heet. Zo krijgen we je sneller productief. We zullen het uitdrukkelijk zeggen wanneer deze veronderstelling niet meer van toepassing is.

# Opdracht
{% instructions %}

## vraag 1
Ik kopieer via Windows explorer mijn volledige git repository van PC A naar PC B. Welke repository is remote van welke andere repository?

* A. alleen A is remote van B
* B. alleen B is remote van A
* C. A en B zijn remotes van elkaar
* D. geen van beide is remote van de ander

## vraag 2
Zie onderstaande figuur. Mogen Git repositories op deze manier naar elkaar verwijzen?

* A. ja
* B. nee, want `B` en `C` mogen niet allebei de naam "origin" gebruiken
* C. nee, want als `C` naar `A` verwijst, mag `A` niet terug verwijzen naar `C`
* D. nee, want `B` mag niet naar `A` *en* `C` verwijzen
* E. nee, om meerdere redenen

![Voorbeeldopstelling remotes]({% pagerepo remotes-quiz.png %})
