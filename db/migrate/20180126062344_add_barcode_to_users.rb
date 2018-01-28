class AddBarcodeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :barcode, :string
    add_column :users, :grsaddress, :string

  end
end
