module Spree
  class CollectionProduct < ActiveRecord::Base
  
    attr_accessible :collection_id, :position, :product_id

    belongs_to :product
    belongs_to :collection
    
    def product_name
      
    end
    
    def product_name=(_product_name)
      
    end

  end
end
