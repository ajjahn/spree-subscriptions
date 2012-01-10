module Spree
	module Admin
		class SubscriptionsController < ResourceController

		  def fire   
		    event = params[:e]
		    Subscription.transaction do 
		      @subscription.send("#{event}!")
		    end
		    flash[:notice] = t('subscription_updated')
		  rescue Spree::GatewayError => ge
		    flash[:error] = "#{ge.message}"
		  ensure
		    redirect_to :back
		  end

		  private

		  def collection
				params[:search] ||= {}
		    params[:search][:meta_sort] ||= "created_at.dec"
        @search = super.metasearch(params[:search])
		      		
				@collection = @search.relation.includes([:user, :variant]).page(params[:page]).per(Spree::Config[:orders_per_page])
		  end

		end
	end
end