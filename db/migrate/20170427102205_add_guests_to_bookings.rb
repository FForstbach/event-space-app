class AddGuestsToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :guests, :integer
  end
end
