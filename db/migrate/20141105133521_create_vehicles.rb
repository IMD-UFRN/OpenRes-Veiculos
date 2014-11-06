class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|

      t.string :plate
      t.string :car_model
      
      t.timestamps
    end
  end
end
