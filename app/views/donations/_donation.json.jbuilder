json.extract! donation, :id, :amount, :address, :message, :currency, :user_id, :created_at, :updated_at
json.url donation_url(donation, format: :json)
