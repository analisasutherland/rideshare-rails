class Driver < ApplicationRecord
  has_many :trips

  def total_earnings
    sum = 0
    self.trips.each do |trip|
      sum += (((trip.cost * 0.01) - 1.65)* 0.80)
    end
    return sum.round(2)
  end

  def average_rating
    count = 0
    total = 0
    self.trips.each do |trip|
      total += trip.rating
      count += 1
    end
    return (total / count).round(2)
  end
end
