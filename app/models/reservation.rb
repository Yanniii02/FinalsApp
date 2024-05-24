class Reservation < ApplicationRecord
  belongs_to :passenger
  belongs_to :trip

  after_create :update_trip_details
  after_destroy :update_trip_details

  private

  def update_trip_details
    trip.update_number_of_passengers_and_total_fare
  end
end
