class AddDescriptionToInstruments < ActiveRecord::Migration[7.0]
  def change
    add_column :instruments, :description, :text
  end
end
