class AddOwnerToToilets < ActiveRecord::Migration[5.2]
  def change
    add_reference :toilets, :owner, foreign_key: { to_table: :users }
  end
end
