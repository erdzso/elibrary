# encoding: utf-8
# language: hu

@javascript
Jellemző: A rendszer működésének bemutatása
  Annak érdekében, hogy az érdeklődő teljes képet kapjon a rendszerről
  meg kell mutatnunk annak működését.

  Háttér:
    Amennyiben a következő könyvek vannak a rendszerben:
      | cím                                      | szerző(k)                 | kategória           | kiadó                     | isbn              | oldalszám | év   |
      | Projektmenedzsment és szoftverfejlesztés | Langer Tamás              | Vállalatirányatás   | Panem Kft.                | 978 963 545 474 7 | 240       | 2007 |
      | Numerikus módszerek                      | Gergó Lajos               | Matematika          | ELTE Eötvös Kiadó         | 978 963 312 034 7 | 329       | 2012 |
      | Algebra I.                               | Fried Ervin               | Matematika          | Nemzeti Tankönyvkiadó Rt. | 963 19 1176 4     | 334       | 2000 |
      | Analízis feladatokban I.                 | Szili László              | Matematika          | ELTE Eötvös Kiadó         | 963 463 740 x     | 260       | 2005 |
      | Szoftvertechnológia és UML               | Sike Sándor, Varga László | Szoftvertechnológia | ELTE Eötvös Kiadó         | 963 463 587 3     | 349       | 2003 |
      | Osztott algoritmusok                     | Nancy Ann Lynch           | Algoritmusok        | Kiskapu Kiadó             | 963 9301 03 5     | 781       | 2002 |

  Forgatókönyv: Felhasználói folyamat a regisztrálástól a kölcsönzésig
    Amennyiben nem vagyok bejelentkezve
    Ha érvényes adatokkal próbálok regisztrálni
    Akkor látnom kell a sikeres regisztrációról szóló üzenetet
    Ha frissítem az oldalt
    Akkor bejelentkezett felhasználónak kell lennem
    Ha a könyveket listázó oldalra megyek
    És rákeresek a "Matematika" szóra
    Akkor a következő című könyveket kell látnom:
      | Numerikus módszerek      |
      | Algebra I.               |
      | Analízis feladatokban I. |
    És nem láthatom a következő című könyveket:
      | Projektmenedzsment és szoftverfejlesztés |
      | Szoftvertechnológia és UML               |
      | Osztott algoritmusok                     |
    Ha kikölcsönözöm a "Numerikus módszerek" című könyvet
    Akkor látnom kell a kölcsönzés sikerességét visszajelző üzenetet
    Ha a kölcsönzéseim listázása oldalra megyek
    Akkor látnom kell a kölcsönzés adatait a listában
    Ha kijelentkezem
    Akkor látnom kell a kijelentkezés sikerességéről szóló üzenetet
    Ha frissítem az oldalt
    Akkor nem lehetek bejelentkezve

