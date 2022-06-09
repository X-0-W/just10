class AddAddressToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :address, :string
    add_column :listings, :latitude, :float
    add_column :listings, :longitude, :float
  end
end
