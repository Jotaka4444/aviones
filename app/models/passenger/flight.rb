class Passenger::Flight < ActiveRecord::Base
  belongs_to :passenger
  belongs_to :flight
end
