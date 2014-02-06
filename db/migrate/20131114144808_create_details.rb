class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.integer :appointment_id
      t.integer :treatment_id
      t.decimal :price

      t.timestamps
    end
  end
end
