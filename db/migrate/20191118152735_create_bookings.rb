class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :total_price
      t.string :status
      t.references :user, foreign_key: true
      t.references :movie_set, foreign_key: true

      t.timestamps
    end
  end
end
