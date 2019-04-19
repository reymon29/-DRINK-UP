class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :likeness, default: 0
      t.integer :tasteness, default: 0
      t.integer :recommend, default: 0
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
