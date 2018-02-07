require 'rails_helper'

describe Course, type: :model do
  context 'validations' do
    it { should validate_presence_of :name }
  end

  context 'uniqueness' do
    it { should validate_uniqueness_of :name }
  end

  context 'relationships' do
    it { should have_many :student_courses }
    it { should have_many :students }
  end
end
