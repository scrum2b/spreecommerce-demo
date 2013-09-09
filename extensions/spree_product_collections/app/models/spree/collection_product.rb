module Spree
  class CollectionProduct < ActiveRecord::Base
  
    attr_accessible :collection_id, :position, :product_id
    
    belongs_to :product
    belongs_to :collection
  
  end
end
