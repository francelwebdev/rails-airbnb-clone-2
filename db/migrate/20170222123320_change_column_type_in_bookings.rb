class ChangeColumnTypeInBookings < ActiveRecord::Migration[5.0]
  def change
  	change_column :bookings, :state, 'boolean USING CAST(state AS boolean)'

  end
end
