# Python indentatie
Python is in één opzicht erg zeldzaam onder de programmeertalen. In Python wordt gebruik gemaakt van "significant whitespace". Voor de meeste programmeertalen is er **in de structuur van code** geen verschil tussen een spatie, een newline, een tab, tien spaties, zeven newlines, drie tabs,... In Python zijn dit allemaal verschillende zaken.

Bijvoorbeeld, in C♯ kunnen we dit schrijven (het is geen probleem als je C♯ niet kent, dit is maar om het idee te tonen):

```csharp
using System;

public class Program {
    public static void Main() {
        Console.WriteLine("Hello World!");
    }
}
```

Opnieuw in C♯ is dit net hetzelfde als

```csharp
using System; public class Program { public static void Main() { Console.WriteLine("Hello World!"); } }
```

Dat komt omdat alle witruimte ("whitespace") in de **structuur** van de code inwisselbaar is. Enkel witruimte in tekstwaarden maakt een verschil. Indien je bijvoorbeeld `"Hello      World!"` in je programma zou typen, zou dat ook met veel ruimte tussen de twee woorden getoond worden.

In Python is dit anders. Je hoeft de werking nog niet te begrijpen, maar volgende twee codes zijn niet gelijkwaardig:

```python
if 3 > 2:
    print('hello')
    print('world')
```

```python
if 3 > 2:
  print('hello')
        print('world')
```

Het eerste stukje is geldig. Het tweede niet. In Python maakt witruimte een verschil, zelfs buiten tekstwaarden. Dat is significant whitespace.

## Andere text editors (ter informatie voor wie geen IDLE gebruikt)

.. danger::

   Als je een andere text editor dan IDLE gebruikt voor Python, is de kans groot dat een tab letterlijk wordt genomen. Er is een **zeer** algemene afspraak in de Pythonwereld (en ook in sommige andere programmertalen) om **geen** letterlijke tabs te gebruiken. Zorg er dus voor dat je je text editor instelt om tabs vanzelf om te zetten in vier spaties. 

TODO:
- link voor VS
- link voor VSC
- link voor Notepad++
- link voor Atom
- advies om dit op te zoeken indien nodig
- term "indentatie"
