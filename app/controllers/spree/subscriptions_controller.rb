module Spree
	class SubscriptionsController  < BaseController
		def show
			@subscription = Subscription.find(params[:id])
		end
	end
end