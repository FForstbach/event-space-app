class AddFieldsToVenues < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :city, :string
    add_column :venues, :venue_sqm, :integer
  end
end
