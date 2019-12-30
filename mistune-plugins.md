# info uit bestaande plugins

* staan op repo onder mistune/mistune/plugins
* `extra.py` bevat er een voor hyperlinks en een voor strikethrough (doostrepen)
* `footnotes.py` bevat een complexere plugin voor footnotes
* `table.py` bevat een complexere plugin voor tabellen
* `__init__.py` bevat een dictionary van naam van de plugin (url, strikethrough, footnotes, table) naar de plugin zelf
  * "plugin zelf": is steeds een functie die markdown file als parameter heeft (`md`)
* `__init__.py` bevat ook `__all__`: lijst van exports
* volgens [docs](https://mistune.readthedocs.io/en/latest/plugins.html) kan een plugin via naam of via referentie worden aangeduid, i.e. `plugins=[plugin_strikethrough]` of `plugins=['footnotes']` → als niet duidelijk is waar ik plugin moet registreren om via naam mee te geven, kan ik gewoon de plugin zelf meegeven
* static content is waarschijnlijk meest gelijkend op strikethrough en url, in die zin dat het ook inline zou moeten zijn

# gemeenschappelijke aspecten strikethrough en url

* hebben beide een regex om gebruik van de plugin te herkennen, aangeduid via volgende regels:

```
md.inline.register_rule('<naam van de plugin dus strikethrough of url_link>', <corresponderende regex>, <parsemethode>)
```
