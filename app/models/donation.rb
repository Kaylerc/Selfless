class Donation < ApplicationRecord
  belongs_to :runner, required: false
end
