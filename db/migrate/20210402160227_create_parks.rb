class CreateParks < ActiveRecord::Migration[6.1]
  def change
    create_table :parks do |t|
      t.string :title
      t.string :address
      t.string :coordinates
      t.integer :place_count
      t.integer :free_place_count
      t.integer :car_type
      t.integer :building_type

      t.timestamps
    end
  end
end
