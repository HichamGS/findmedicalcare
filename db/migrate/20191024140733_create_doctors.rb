class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.references :specialty, foreign_key: true
      t.references :location, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
