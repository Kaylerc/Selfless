class Donation < ApplicationRecord
  belongs_to :runner, required: false
  after_validation :geocode

  geocoded_by :pickup_location

  def full_name
   self.first_name + " " + self.last_name
  end

end
