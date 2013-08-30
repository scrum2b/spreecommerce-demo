# This migration comes from spree_shipment (originally 20130830183900)
class AddShippingMethod < ActiveRecord::Migration
  def change
    add_column :spree_shipments, :first_scanned_at, :date
    add_column :spree_shipments, :delivered_at, :date
    add_column :spree_shipments, :shipper, :string
    add_column :spree_shipments, :shipping_method, :string
    
  end
end
