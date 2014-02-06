class Specialty < ActiveRecord::Base
  attr_accessible :name
  has_many :doctors
  has_many :treatments
end
