# This migration comes from spree_product_collections (originally 20130830183901)
class CreateCollectionProduct < ActiveRecord::Migration
  
  def change
    create_table :spree_collection_products, :force => true do |t|
      t.integer  :collection_id
      t.integer  :product_id
      t.integer  :position
      t.datetime :created_at,    :null => false
      t.datetime :updated_at,    :null => false
    end

    add_index :spree_collection_products, [:collection_id, :position], :name => "index_spree_collection_products_on_collection_id_and_position"
    add_index :spree_collection_products, [:product_id], :name => "index_spree_collection_products_on_product_id"

  end

end
