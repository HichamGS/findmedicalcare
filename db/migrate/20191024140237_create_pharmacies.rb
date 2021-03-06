class CreatePharmacies < ActiveRecord::Migration[5.2]
  def change
    create_table :pharmacies do |t|
      t.string :type
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
