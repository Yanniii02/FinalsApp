class Trip < ApplicationRecord
  belongs_to :bus
  has_many :reservations
  has_many :passengers, through: :reservations

  def origin_and_destination
    "#{origin} to #{destination}"
  end
end
