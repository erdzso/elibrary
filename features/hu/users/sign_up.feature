# encoding: utf-8
# language: hu

@javascript
Jellemző: Regisztráció
  Annak érdekében, hogy hozzáférhessek az oldal védett tartalmához,
  felhasználóként
  tudnom kell regisztrálni.

    Háttér:
      Amennyiben nem vagyok bejelentkezve

  Forgatókönyv: Sikeres regisztráció
    Ha érvényes adatokkal próbálok regisztrálni
    Akkor látnom kell a sikeres regisztrációról szóló üzenetet
      
  Forgatókönyv: Sikertelen regisztráció (érvénytelen e-mail cím)
    Ha hibás adatokkal próbálok regisztrálni (érvénytelen e-mail cím)
    Akkor látnom kell az érvénytelen e-mail címről szóló üzenetet

  Forgatókönyv: Sikertelen regisztráció (jelszó nélkül)
    Ha hiányos adatokkal próbálok regisztrálni (jelszó nélkül)
    Akkor látnom kell a hiányzó jelszóról szóló üzenetet

  Forgatókönyv: Sikertelen regisztráció (jelszó-megerősítés nélkül)
    Ha hiányos adatokkal próbálok regisztrálni (jelszó-megerősítés nélkül)
    Akkor látnom kell a hiányzó jelszó-megerősítésről szóló üzenetet

  Forgatókönyv: Sikertelen regisztráció (a jelszó és a jelszó-megerősítés különbözik)
    Ha hibás adatokkal próbálok regisztrálni (a jelszó és a jelszó-megerősítés különbözik)
    Akkor látnom kell a jelszó-eltérésről szóló üzenetet
