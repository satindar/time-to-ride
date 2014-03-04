class Ride < ActiveRecord::Base
  def self.count_of_rides_user_has_joined
    Ride.count
  end
end
