class AddPhotoToInstruments < ActiveRecord::Migration[7.0]
  def change
    add_column :instruments, :photo, :string
  end
end
