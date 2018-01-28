class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  extend FriendlyId
  friendly_id :email, use: :slugged
  	
  	def should_generate_new_friendly_id?
  		new_record? || slug.blank?
	end
end
