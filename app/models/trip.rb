class Trip < ApplicationRecord
  belongs_to :driver
  belongs_to :passenger

  validates :passenger_id, presence: true
  validates :driver_id, presence: true

  # def rate_trip
  #   unrated_trips = self.trips.where(rating: " ")
  #   if unrated_trips.length == 0
  #     return nil
  #   end
  # end


end
