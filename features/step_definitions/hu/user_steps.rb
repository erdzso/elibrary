# encoding: utf-8
# language: hu

### GIVEN ###
Amennyiben(/^nem vagyok bejelentkezve$/) do
  step %{I am not logged in}
end

Amennyiben(/^be vagyok jelentkezve$/) do
  step %{I am logged in}
end

Amennyiben(/^felhasználóként létezem a rendszerben$/) do
  step %{I exist as a user}
end

Amennyiben(/^felhasználóként nem létezem a rendszerben$/) do
  step %{I do not exist as a user}
end

#Given /^I exist as an unconfirmed user$/ do
#  create_unconfirmed_user
#end

#### WHEN ###
Ha(/^megpróbálok bejelentkezni$/) do
  step %{I sign in with valid credentials}
end

Ha(/^kijelentkezem$/) do
  step %{I sign out}
end

Ha(/^érvényes adatokkal próbálok regisztrálni$/) do
  step %{I sign up with valid user data}
end

Ha(/^hibás adatokkal próbálok regisztrálni \(érvénytelen e\-mail cím\)$/) do
  step %{I sign up with an invalid email}
end

Ha(/^hiányos adatokkal próbálok regisztrálni \(jelszó\-megerősítés nélkül\)$/) do
  step %{I sign up without a password confirmation}
end

Ha(/^hiányos adatokkal próbálok regisztrálni \(jelszó nélkül\)$/) do
  step %{I sign up without a password}
end

Ha(/^hibás adatokkal próbálok regisztrálni \(a jelszó és a jelszó\-megerősítés különbözik\)$/) do
  step %{I sign up with a mismatched password confirmation}
end

Ha(/^frissítem az oldalt$/) do
  step %{I return to the site}
end

Ha(/^rossz e\-mail címmel próbálok bejelentkezni$/) do
  step %{I sign in with a wrong email}
end

Ha(/^rossz jelszóval próbálok bejelentkezni$/) do
  step %{I sign in with a wrong password}
end

Ha(/^módosítom az adataimat$/) do
  step %{I edit my account details}
end

#When /^I look at the list of users$/ do
#  visit '/'
#end
#
#### THEN ###
Akkor(/^bejelentkezett felhasználónak kell lennem$/) do
  step %{I should be signed in}
end

Akkor(/^nem lehetek bejelentkezve$/) do
  step %{I should be signed out}
end

#Then /^I see an unconfirmed account message$/ do
#  page.should have_content "You have to confirm your account before continuing."
#end
Akkor(/^látnom kell a sikeres bejelentkezésről szóló üzenetet$/) do
  step %{I see a successful sign in message}
end

Akkor(/^látnom kell a sikeres regisztrációról szóló üzenetet$/) do
  step %{I should see a successful sign up message}
end

Akkor(/^látnom kell az érvénytelen e\-mail címről szóló üzenetet$/) do
  step %{I should see an invalid email message}
end

Akkor(/^látnom kell a hiányzó jelszóról szóló üzenetet$/) do
  step %{I should see a missing password message}
end

Akkor(/^látnom kell a hiányzó jelszó\-megerősítésről szóló üzenetet$/) do
  step %{I should see a missing password confirmation message}
end

Akkor(/^látnom kell a jelszó\-eltérésről szóló üzenetet$/) do
  step %{I should see a mismatched password message}
end

Akkor(/^látnom kell a kijelentkezés sikerességéről szóló üzenetet$/) do
  step %{I should see a signed out message}
end

Akkor(/^látnom kell a bejelentkezési hibáról szóló üzenetet$/) do
  step %{I see an invalid login message}
end

Akkor(/^látnom kell a módosítás sikerességéről szóló üzenetet$/) do
  step %{I should see an account edited message}
end

#Then /^I should see my name$/ do
#  create_user
#  page.should have_content @user[:name]
#end
