class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :path
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
