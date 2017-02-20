class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :renter, foreign_key: true
      t.references :treehouse, foreign_key: true
      t.string :start_date
      t.string :end_date
      t.float :price
      t.integer :guest_count
      t.integer :rating

      t.timestamps
    end
  end
end
