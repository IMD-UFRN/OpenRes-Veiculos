class CreateCarReservations < ActiveRecord::Migration
  def change
    create_table :car_reservations do |t|

      t.timestamps
    end
  end
end
