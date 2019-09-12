FactoryBot.define do
  factory :school do
    name { "MyString" }
    address { "MyString" }
    principal { "MyString" }
    capacity { 1 }
    private_school { false }
  end
end
