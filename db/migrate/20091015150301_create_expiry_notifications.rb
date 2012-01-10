class CreateExpiryNotifications < ActiveRecord::Migration
  def self.up
    create_table :spree_expiry_notifications do |t|
			t.integer :subscription_id
			t.integer	:interval
      t.timestamps
    end
  end

  def self.down
    drop_table :spree_expiry_notifications
  end
end
