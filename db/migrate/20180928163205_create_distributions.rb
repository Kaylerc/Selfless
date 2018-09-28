class CreateDistributions < ActiveRecord::Migration[5.2]
  def change
    create_table :distributions do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :region
      t.date :dropoff_date
      t.time :dropoff_time
      t.string :distribution
      t.string :dropoff_location
      t.integer :runner_id
      t.integer :donation_id

      t.timestamps
    end
    add_index :distributions, :email, unique: true
  end
end
