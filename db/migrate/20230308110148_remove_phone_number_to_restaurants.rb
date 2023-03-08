class RemovePhoneNumberToRestaurants < ActiveRecord::Migration[7.0]
  def change
    remove_column :restaurants, :phone_number
  end
end
