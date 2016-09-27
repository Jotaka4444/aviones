class PersonalFlight < ActiveRecord::Base
  belongs_to :personal
  belongs_to :flight
end
