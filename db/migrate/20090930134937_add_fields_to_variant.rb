class AddFieldsToVariant < ActiveRecord::Migration
  def self.up
		add_column :spree_variants, :subscribable, :boolean, :default => false		
  end

  def self.down
		remove_column :spree_variants, :subscribable
  end
end