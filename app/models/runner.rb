class Runner < ApplicationRecord
  has_many :donations
  has_many :distributions

  def full_name
   self.first_name + " " + self.last_name
 end
end
