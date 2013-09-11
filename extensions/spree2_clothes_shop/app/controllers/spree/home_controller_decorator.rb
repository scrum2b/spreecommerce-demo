module Spree
  HomeController.class_eval do
    def index
      @searcher = build_searcher(params)
      @products = @searcher.retrieve_products
    end
    
    def contact
      
    end
    
    def about
      
    end
    
    def help
      
    end
    
    def support
      
    end
    
    def pr_contact
      
    end
    
    def distribution
      
    end
    
    def resellers
      
    end
    
    def corporate
      
    end
    
    def promotional
      
    end
    
    def affiliates
      
    end
    
    def our_brand
      
    end
    
    def press_media
      
    end
    
    def shipping
      
    end
    
    def ip_fakes
      
    end
    
    def terms_conditions
      
    end
    
    def privacy
      
    end
  end
end