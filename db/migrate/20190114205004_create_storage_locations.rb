class CreateStorageLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :storage_locations do |t|

      t.timestamps
    end
  end
end
