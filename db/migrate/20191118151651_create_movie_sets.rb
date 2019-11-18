class CreateMovieSets < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_sets do |t|
      t.string :title
      t.text :description
      t.string :media_name
      t.string :address
      t.integer :price_per_day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
