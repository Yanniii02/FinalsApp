class Bus < ApplicationRecord
    has_many :trips
    has_many :drivers

    #attribute : bus_number, plate_number :integer
end
