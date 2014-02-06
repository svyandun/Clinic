class Patient < ActiveRecord::Base
  attr_accessible :alergies, :birthdate, :diseases, :firstName, :lastName, :sex
  has_many :appointments
  has_many :doctors, :through => :appointments

  def name
  	"#{firstName} #{lastName}"
  end
end
