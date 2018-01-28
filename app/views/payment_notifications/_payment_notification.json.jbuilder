json.extract! payment_notification, :id, :params, :status, :tx_id, :user_id, :created_at, :updated_at
json.url payment_notification_url(payment_notification, format: :json)
