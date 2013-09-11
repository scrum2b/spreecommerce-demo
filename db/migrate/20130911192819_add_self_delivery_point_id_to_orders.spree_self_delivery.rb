# This migration comes from spree_self_delivery (originally 20130112180255)
class AddSelfDeliveryPointIdToOrders < ActiveRecord::Migration
  def change
    add_column :spree_orders, :self_delivery_point_id, :integer
  end
end
