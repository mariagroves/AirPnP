class AddPriceToToilets < ActiveRecord::Migration[5.2]
  def change
    add_column :toilets, :price, :integer
  end
end
