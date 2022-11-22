class CreateInstruments < ActiveRecord::Migration[7.0]
  def change
    create_table :instruments do |t|
      t.string :brand
      t.string :model
      t.string :category
      t.integer :year
      t.string :color
      t.integer :price_per_day
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
