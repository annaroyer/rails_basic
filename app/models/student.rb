class Student < ApplicationRecord
  has_many :addresses
  has_many :courses
end
