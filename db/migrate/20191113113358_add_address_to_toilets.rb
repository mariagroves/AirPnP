class AddAddressToToilets < ActiveRecord::Migration[5.2]
  def change
    add_column :toilets, :address, :string
  end
end
