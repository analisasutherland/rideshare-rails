class Trip < ApplicationRecord
  # TODO: SET UP RELATIONSHIPS
  belongs_to :driver
  belongs_to :passenger
end
