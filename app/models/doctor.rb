class Doctor < ActiveRecord::Base
  attr_accessible :birthdate, :firstName, :lastName, :password, :specialty_id, :username
  has_many :appointments
  has_many :patients, :through => :appointments, :uniq => true
  belongs_to :specialty
  has_many :treatments, :through => :specialty

  def name
  		"Dr. #{firstName} #{lastName}"
  end
end
