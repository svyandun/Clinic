class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :doctor_id
      t.integer :patient_id
      t.string :name
      t.text :description
      t.text :symptoms
      t.text :diagnosis

      t.timestamps
    end
  end
end
