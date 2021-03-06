class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.float :rating
      t.text :comment
      t.references :doctor, foreign_key: true
      t.references :hospital
      t.references :pharmacy, foreign_key: true

      t.timestamps
    end
  end
end
