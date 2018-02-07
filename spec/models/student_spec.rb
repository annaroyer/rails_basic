require 'rails_helper'

describe Student, type: :model do
  context 'validations' do
    it { should validate_presence_of :name }
  end

  context 'relationships' do
    it { should have_many :addresses }
    it { should have_many :student_courses }
    it { should have_many :courses }
  end
end
