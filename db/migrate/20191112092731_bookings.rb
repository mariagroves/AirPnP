class Bookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :renter, foreign_key: {to_table: :users}
      t.references :toilet, foreign_key: true
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
