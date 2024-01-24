class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :content
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end

    add_index :reviews, %i[restaurant_id created_at]
  end
end
