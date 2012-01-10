class AddCcToSubscription < ActiveRecord::Migration
  def self.up
		add_column :spree_subscriptions, :creditcard_id, :integer
  end

  def self.down
		remove_column :spree_subscriptions, :creditcard_id
  end
end