class CreateCollection < ActiveRecord::Migration
  
  def change
    create_table :spree_collections, :force => true do |t|
      t.string   :name
      t.string   :permalink
      t.string   :description
      t.string   :keywords
      t.datetime :created_at,       :null => false
      t.datetime :updated_at,       :null => false
    end
  end

end
