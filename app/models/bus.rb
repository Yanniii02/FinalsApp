class Bus < ApplicationRecord
    has_many :trips
    has_many :drivers
    has_one_attached :image

    #attribute : bus_number, plate_number :integer
end
