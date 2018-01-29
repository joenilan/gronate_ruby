class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.integer :amount
      t.string :address
      t.text :message
      t.string :currency
      t.integer :user_id

      t.timestamps
    end
  end
end
