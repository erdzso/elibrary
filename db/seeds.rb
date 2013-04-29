# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) are set in the file config/application.yml.
# See http://railsapps.github.com/rails-environment-variables.html

#puts 'ROLES'
#YAML.load(ENV['ROLES']).each do |role|
#  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
#  puts 'role: ' << role
#end
#puts 'DEFAULT USERS'
#user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
#puts 'user: ' << user.name
#user.add_role :admin

[ { isbn: '978 963 545 474 7', page_count: 240, year: 2007, category: 'Vállalatirányatás',   publisher_name: 'Panem Kft.',                author_name: 'Langer Tamás',                             title: 'Projektmenedzsment és szoftverfejlesztés' },
  { isbn: '978 963 312 034 7', page_count: 329, year: 2012, category: 'Matematika',          publisher_name: 'ELTE Eötvös Kiadó',         author_name: 'Gergó Lajos',                              title: 'Numerikus módszerek' },
  { isbn: '963 19 1176 4',     page_count: 334, year: 2000, category: 'Matematika',          publisher_name: 'Nemzeti Tankönyvkiadó Rt.', author_name: 'Fried Ervin',                              title: 'Algebra I.' },
  { isbn: '963 463 740 x',     page_count: 260, year: 2005, category: 'Metematika',          publisher_name: 'ELTE Eötvös Kiadó',         author_name: 'Szili László',                             title: 'Analízis feladatokban I.' },
  { isbn: '963 463 587 3',     page_count: 349, year: 2003, category: 'Szoftvertechnológia', publisher_name: 'ELTE Eötvös Kiadó',         author_name: 'Sike Sándor, Varga László',                title: 'Szoftvertechnológia és UML' },
  { isbn: '963 545 364 7',     page_count: 394, year: 2003, category: 'Matematika',          publisher_name: 'Panem Kft.',                author_name: 'Pásztorné Varga Katalin, Várterész Magda', title: 'A matematikai logika alkalmazásszemléletű tárgyalása' },
  { isbn: '963 9301 03 5',     page_count: 781, year: 2002, category: 'Algoritmusok',        publisher_name: 'Kiskapu Kiadó',             author_name: 'Nancy Ann Lynch',                          title: 'Osztott algoritmusok' } ].each do |attributes|
    FactoryGirl.create :book, attributes
  end

u = FactoryGirl.create :user, name: 'Test Admin', email: 'test_admin@example.com'
u.add_role :admin
u = FactoryGirl.create :user, name: 'Test User',  email: 'test_user@example.com'
u.add_role :user

