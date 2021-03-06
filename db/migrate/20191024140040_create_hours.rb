class CreateHours < ActiveRecord::Migration[5.2]
  def change
    create_table :hours do |t|
      t.string :Day
      t.time :start
      t.time :end
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
