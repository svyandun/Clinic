class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.integer :specialty_id
      t.string :firstName
      t.string :lastName
      t.date :birthdate
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
