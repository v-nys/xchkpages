# Compound checks
(misschien beter opsplitsen in drie pagina's?)
## AND
## OR

.. important::

   De huidige versies van beide checks zijn "non-short circuiting". Dat betekent dat al hun componenten worden uitgevoerd, ook als deze de uitkomst niet meer zouden kunnen beïnvloeden. Dit is belangrijk indien deze componenten effecten hebben op andere zaken dan de uitkomst (bijvoorbeeld als ze files aanmaken, data wijzigen,...).
