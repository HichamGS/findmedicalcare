class CreateHospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.references :location, foreign_key: true
      t.string :name
      t.text :description
      t.string :type_hospital

      t.timestamps
    end
  end
end
