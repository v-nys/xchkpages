# info uit bestaande plugins

* staan op repo onder mistune/mistune/plugins
* `extra.py` bevat er een voor hyperlinks en een voor strikethrough (doostrepen)
* `footnotes.py` bevat een complexere plugin voor footnotes
* `table.py` bevat een complexere plugin voor tabellen
* `__init__.py` bevat een dictionary van naam van de plugin (url, strikethrough, footnotes, table) naar de plugin zelf
  * "plugin zelf": is steeds een functie die markdown file als parameter heeft (`md`)
* `__init__.py` bevat ook `__all__`: lijst van exports
