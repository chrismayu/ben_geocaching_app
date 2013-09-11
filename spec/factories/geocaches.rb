# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :geocach do
    name "MyString"
    lat 1.5
    lad 1.5
    receive_email false
    cache_name "MyString"
    image "MyString"
    email "MyString"
    user_id 1
    hide "2013-09-11"
    found 1
  end
end
