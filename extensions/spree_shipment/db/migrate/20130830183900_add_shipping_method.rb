class AddShippingMethod < ActiveRecord::Migration
  def change
    add_column :spree_shipments, :first_scanned_at, :date
    add_column :spree_shipments, :delivered_at, :date
    add_column :spree_shipments, :shipper, :string
    add_column :spree_shipments, :shipping_method, :string
    
  end
end
