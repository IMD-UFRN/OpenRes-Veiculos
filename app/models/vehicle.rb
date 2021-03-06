class Vehicle < ActiveRecord::Base

  has_many :vehicle_reservations

  validates_presence_of :plate, :car_model, :description, :capacity

  def full_name
    car_model +  " - " + plate
  end

end
