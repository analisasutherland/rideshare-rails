class Passenger < ApplicationRecord
  # TODO: SET UP RELATIONSHIPS
  has_many :trips

  validates :name, presence: true
  validates :phone_num, presence: true

  def total_spent
    total_sum = 0
    self.trips.each do |trip|
      total_sum += trip.cost
    end
    return total_sum
  end
end
