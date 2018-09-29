class Distribution < ApplicationRecord
  belongs_to :runner, required: false

  def full_name
   self.first_name + " " + self.last_name
 end
end
