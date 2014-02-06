class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.integer :specialty_id
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
