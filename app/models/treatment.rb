class Treatment < ActiveRecord::Base
  attr_accessible :description, :name, :price, :specialty_id
  belongs_to :specialty 
end
