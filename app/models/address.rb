class Address < ApplicationRecord
  validates_presence_of :description, :street, :city, :state, :zip_code
  validates :zip_code, numericality: true
  belongs_to :student
end
