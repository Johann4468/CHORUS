class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.references :user, null: false, foreign_key: true
      t.references :instrument, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :total_price
      t.string :acceptation
      t.text :message_to_owner

      t.timestamps
    end
  end
end
