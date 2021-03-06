class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.float :lat
      t.float :lng
      t.text :address
      t.string :zipcode
      t.string :city
      t.string :tel

      t.timestamps
    end
  end
end
