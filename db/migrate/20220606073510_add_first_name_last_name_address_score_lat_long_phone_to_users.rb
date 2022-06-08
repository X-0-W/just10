class AddFirstNameLastNameAddressScoreLatLongPhoneToUsers < ActiveRecord::Migration[6.1]
  def change
      add_column :users, :first_name, :string
      add_column :users, :last_name, :string
      add_column :users, :address, :string
      add_column :users, :score, :float, default: 0
      add_column :users, :lat, :float
      add_column :users, :long, :float
      add_column :users, :phone, :string
  end
end
