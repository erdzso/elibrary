# encoding: utf-8
# language: hu

Amennyiben(/^a következő könyvek vannak a rendszerben:$/) do |table|
  attributes = [ :title, :author_name, :category, :publisher_name, :isbn, :page_count, :year ]
  table.raw.each_with_index do |row, index|
    next if index == 0
    hash = {}
    attributes.each_with_index do |attribute, index|
      hash[attribute] = row[index]
    end
    FactoryGirl.create :book, hash
  end
end

Ha(/^a könyveket listázó oldalra megyek$/) do
  page.find(:xpath, ".//a[contains(text(), 'Books')]").click
  #visit '/books'
end

Ha(/^rákeresek a "(.*?)" szóra$/) do |string|
  page.find(:xpath, ".//input[@id='search']").set('Matematika')
  page.find(:xpath, ".//input[@type='submit'][@value='search']").click
end

Akkor(/^a következő című könyveket kell látnom:$/) do |table|
  table.raw.each do |row|
    page.should have_xpath(".//td[contains(text(), '#{row.first}')]")
  end
end

Akkor(/^nem láthatom a következő című könyveket:$/) do |table|
  table.raw.each do |row|
    page.should_not have_xpath(".//td[contains(text(), '#{row.first}')]")
  end
end

Ha(/^kikölcsönözöm a "(.*?)" című könyvet$/) do |title|
  page.find(:xpath, ".//tr[1]//td//a[contains(text(), 'Lend')]").click
end

Akkor(/^látnom kell a kölcsönzés sikerességét visszajelző üzenetet$/) do
  page.should have_content(/Lending was successfully created/)
end

Ha(/^a kölcsönzéseim listázása oldalra megyek$/) do
  page.find(:xpath, ".//a[contains(text(), 'Lendings')]").click
  #visit "/lendings?user_id=#{User.last.id}"
end

Akkor(/^látnom kell a kölcsönzés adatait a listában$/) do
  page.should have_xpath("//td[contains(text(), 'Numerikus módszerek')]")
end
