class Passenger < ApplicationRecord
  # TODO: SET UP RELATIONSHIPS
  has_many :trips

  validates :title, presence: true
end
