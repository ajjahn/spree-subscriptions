Spree::Admin::PaymentsController.class_eval do
  
	private
  def load_data
    if params.key? "subscription_id"
      @subscription = Subscription.find(params[:subscription_id])
    end
		super
  end
  
end