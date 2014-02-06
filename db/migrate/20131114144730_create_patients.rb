class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :firstName
      t.string :lastName
      t.date :birthdate
      t.string :sex
      t.text :alergies
      t.text :diseases

      t.timestamps
    end
  end
end
