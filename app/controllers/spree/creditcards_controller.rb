module Spree
	class CreditcardsController < BaseController
	
		def update
			@creditcard = Creditcard.find(params[:id])
			@subscription = Subscription.find(params[:subscription_id])
			
			respond_to do |format|
				if @creditcard.update_attributes(params[:creditcard])
					if @subscription.state == "expired"
						@subscription.reactive
						SubscriptionMailer.deliver_subscription_reactivated(@subscription)
					end
					format.html { redirect_to subscription_url(@subscription) }
				else
					format.html  { render :action => "edit" }
				end
			end
		end
		
	end
end