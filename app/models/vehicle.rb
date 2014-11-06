class Vehicle < ActiveRecord::Base

  has_many :vehicle_reservations

  def full_name
    car_model +  " - " + plate
  end

end
