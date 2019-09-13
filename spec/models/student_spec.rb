require 'rails_helper'

RSpec.describe Student, type: :model do
  describe 'attributes' do
    it 'has a name' do
      name = 'BurgerU'
      student = Student.create(name: name)
      expect(student.name).to eq(name)
    end

    it 'has a gpa' do
      gpa = 4
      student = Student.create(gpa: gpa)
      expect(student.gpa).to eq(gpa)
    end

    it 'has a student_number' do
      student_number = 1
      student = Student.create(student_number: student_number)
      expect(student.student_number).to eq(student_number)
    end

    it 'has a school_id' do
      school_id = 1
      student = Student.create(school_id: school_id)
      expect(student.school_id).to eq(school_id)
    end
  end
end

describe "vaildations" do
  it { should validate_presence_of :name }
  it { should validate_presence_of :gpa }
  it { should validate_presence_of :student_number }
  it { should validate_presence_of :school_id }
 
  it 'has a capacity lower bound' do
    should validate_numericality_of(:student_number).
    is_greater_than_or_equal_to(0)
  end

  it 'as a capcaity higer bound' do
    should validate_numericality_of(:student_number).
    is_less_than_or_equal_to(10000)
  end
end

describe "association" do
  it { should belong_to(:school) }
end

describe "uniqueness" do
  Student.create!(name: 'foo')
  subject { Student.new(name: 'foo') }
  it { should validate_uniqueness_of(:name) }
end
