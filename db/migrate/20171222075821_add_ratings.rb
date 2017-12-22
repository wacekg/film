class AddRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.text :comment
      t.integer :rating

      t.references :movie, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
