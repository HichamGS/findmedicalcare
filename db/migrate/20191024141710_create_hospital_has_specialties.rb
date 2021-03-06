class CreateHospitalHasSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :hospital_has_specialties do |t|
      t.references :specialty, foreign_key: true
      t.references :hospital, foreign_key: true

      t.timestamps
    end
  end
end
