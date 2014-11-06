class Vehicle < ActiveRecord::Base

  has_many :vehicle_reservations
end
