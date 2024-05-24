class CreateBuses < ActiveRecord::Migration[6.0]
  def change
    create_table :buses do |t|
      t.string :bus_number
      t.string :plate_number

      t.timestamps
    end
  end
end
