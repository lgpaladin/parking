class CreateParkingSpaces < ActiveRecord::Migration[6.1]
  def change
    create_table :parking_spaces do |t|
      
      t.references :park, null: false, foreign_key: true
      t.integer :space_type
      t.integer :status
      t.boolean :pending
      t.string :uid

      t.timestamps
    end
  end
end
