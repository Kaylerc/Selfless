class AddCoordsToDonations < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :latitude, :float
    add_column :donations, :longitude, :float
  end
end
