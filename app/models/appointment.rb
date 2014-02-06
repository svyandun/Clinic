class Appointment < ActiveRecord::Base
  attr_accessible :description, :diagnosis, :doctor_id, :name, :patient_id, :symptoms, :treatment_ids
  belongs_to :doctor
  belongs_to :patient 
  has_many :details
  has_many :treatments, :through => :details
end
