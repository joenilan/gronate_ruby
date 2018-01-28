class CreatePaymentNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_notifications do |t|
      t.text :params
      t.string :status
      t.string :tx_id
      t.integer :user_id

      t.timestamps
    end
  end
end
