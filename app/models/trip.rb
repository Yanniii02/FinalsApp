class Trip < ApplicationRecord
  belongs_to :bus
  has_many :reservations
  has_many :passengers, through: :reservations

  before_save :compute_total_fare

  def compute_total_fare
    self.total_fare = number_of_passengers * unit_fare
  end

  def update_number_of_passengers_and_total_fare
    self.number_of_passengers = passengers.count
    compute_total_fare
    save
  end

  def origin_and_destination
    "#{origin} to #{destination}"
  end
end
