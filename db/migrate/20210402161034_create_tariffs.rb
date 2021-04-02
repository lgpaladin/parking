class CreateTariffs < ActiveRecord::Migration[6.1]
  def change
    create_table :tariffs do |t|
      
      t.float :day
      t.float :night
      t.float :morning
      t.float :evening
      t.float :track
      t.float :big_track
      t.references :park, null: false, foreign_key: true

      t.timestamps
    end
  end
end
