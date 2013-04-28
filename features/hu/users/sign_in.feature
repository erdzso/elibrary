# encoding: utf-8
# language: hu

@javascript
Jellemző: Bejelentkezés
  Annak érdekében, hogy hozzáférhessen az oldal védett tartalmához,
  a felhasználónak
  be kell tudnia jelentkezni.

  Forgatókönyv: A felhasználó nem létezik a rendszerben
    Amennyiben felhasználóként nem létezem a rendszerben
    Ha megpróbálok bejelentkezni
    Akkor látnom kell a bejelentkezési hibáról szóló üzenetet
    És nem lehetek bejelentkezve

  Forgatókönyv: A felhasználó sikeresen bejelentkezik
    Amennyiben felhasználóként létezem a rendszerben
    És nem vagyok bejelentkezve
    Ha megpróbálok bejelentkezni
    Akkor látnom kell a sikeres bejelentkezésről szóló üzenetet
    Ha frissítem az oldalt
    Akkor bejelentkezett felhasználónak kell lennem

  Forgatókönyv: A felhasználó hibás e-mail címmel próbál bejelentkezni
    Amennyiben felhasználóként létezem a rendszerben
    És nem vagyok bejelentkezve
    Ha rossz e-mail címmel próbálok bejelentkezni
    Akkor látnom kell a bejelentkezési hibáról szóló üzenetet
    És nem lehetek bejelentkezve

  Forgatókönyv: A felhasználó elvéti a jelszót
    Amennyiben felhasználóként létezem a rendszerben
    És nem vagyok bejelentkezve
    Ha rossz jelszóval próbálok bejelentkezni
    Akkor látnom kell a bejelentkezési hibáról szóló üzenetet
    És nem lehetek bejelentkezve

