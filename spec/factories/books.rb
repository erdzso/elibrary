# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    title "MyString"
    isbn "MyString"
    page_count 1
    year 1
    category "MyString"
    publisher_name "MyString"
    author_name "MyString"
  end
end
