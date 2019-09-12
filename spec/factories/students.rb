FactoryBot.define do
  factory :student do
    name { "MyString" }
    gpa { 1.5 }
    student_number { 1 }
    school { nil }
  end
end
