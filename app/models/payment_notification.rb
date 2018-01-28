class PaymentNotification < ApplicationRecord
	belongs_to :user
	serialize :params
	after_create :mark_payment_complete

	private
	def mark_payment_complete
		if status == "Completed"
		end
	end
end
