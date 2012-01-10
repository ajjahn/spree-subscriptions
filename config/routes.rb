Spree::Core::Engine.routes.prepend do
	
	# map.resources :subscriptions, :has_many => [:creditcards]
	resources :subscriptions do
		resources :creditcards
	end
	
	# map.namespace :admin do |admin|
	# 	admin.resources :subscriptions, :has_many => [:payments, :creditcards], :member => {:fire => :put}
	#   admin.resources :subscriptions do |subscriptions|
	# 		subscriptions.resources :creditcard_payments
	# 	end
	# end
  namespace :admin do

		resources :subscriptions do
			resources :payments
			resources :creditcards
	
			member do
        put :fire
      end
			resources :creditcard_payments
		end
		
	end
end
