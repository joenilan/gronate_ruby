class UsersController < ApplicationController
#before_filter :authenticate_user!
	def index 
		@users = User.all 
		
	end
	
	def create_payment(amount_in_cents)
	  self.coin_payments.create!(reason: 'sale', price: amount_in_cents, coin_type: :btc)
	end

	def show
		# @streamlabs_apiurl = HTTParty.get('https://streamlabs.com/api/v1.0/alerts/send_test_alert?access_token=93E1178689AEC78FFE68&type=donations')
		# @streamlabs_response = @streamlabs_apiurl
		

		#@user = User.find(params[:id])
		@user = User.friendly.find(params[:id])
		respond_to do |format|
	    	format.html # show.html.erb
	    	format.xml { render :xml => @user }
		end


	end
end