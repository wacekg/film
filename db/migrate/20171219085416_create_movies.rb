class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :relese_date
      t.integer :length
      t.text :contents
      t.string :type
      t.string :director
      t.string :scenarist
      t.string :country

      t.timestamps
    end
  end
end
