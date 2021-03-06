class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :title
      t.string :price
      t.references :doctor, foreign_key: true
      t.references :hospital
      t.references :specialty, foreign_key: true

      t.timestamps
    end
  end
end
