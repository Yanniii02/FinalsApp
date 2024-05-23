class AddBusNumberToBuses < ActiveRecord::Migration[7.1]
  def change
    add_column :buses, :bus_number, :string
  end
end
