class Detail < ActiveRecord::Base
  attr_accessible :appointment_id, :price, :treatment_id
  belongs_to :appointment
  belongs_to :treatment
end
