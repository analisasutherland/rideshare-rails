class Trip < ApplicationRecord
  belongs_to :driver
  belongs_to :passenger

  validates :passenger_id, presence: true
  validates :driver_id, presence: true

  def trip_cost_dollars
    if self.cost == ' '
      return (self.cost = 0)
    else
      return (self.cost * 0.01)
    end
  end


end
