# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :transaction do
    amount "MyString"
    recipient_id 1
    recipient_name "MyString"
  end
end
