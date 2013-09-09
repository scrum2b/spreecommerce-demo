module Spree
  class Collection < ActiveRecord::Base
  
    attr_accessible :name, :description, :permalink, :keywords
    
    validates :name, :permalink, :presence => true
   
    has_many :collection_products
    has_many :products, :through => :collection_products, :order => :position, :dependent => :destroy

    make_permalink :order => :name

    def to_param
      permalink.present? ? permalink :  name.to_s.to_url
    end

  end

end

