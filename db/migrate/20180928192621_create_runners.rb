class CreateRunners < ActiveRecord::Migration[5.2]
  def change
    create_table :runners do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :region

      t.timestamps
    end
    add_index :runners, :email, unique: true
  end
end
