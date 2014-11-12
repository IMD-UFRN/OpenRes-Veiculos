class Driver < ActiveRecord::Base
  has_many :vehicle_reservations

  validates_presence_of :name
end
