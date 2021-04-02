class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :parking_space, null: false, foreign_key: true
      t.references :schedule, null: false, foreign_key: true
      t.boolean :paid
      t.float :price

      t.timestamps
    end
  end
end
