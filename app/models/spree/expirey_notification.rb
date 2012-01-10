module Spree
	class ExpiryNotification < ActiveRecord::Base
		belongs_to :subscription
	end
end