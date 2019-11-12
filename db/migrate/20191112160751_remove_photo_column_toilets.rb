class RemovePhotoColumnToilets < ActiveRecord::Migration[5.2]
  def change
    remove_column :toilets, :photo, :string
  end
end
