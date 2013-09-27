module Spree

  HomeController.class_eval do

    def index
      @searcher = build_searcher(params)
      @products = @searcher.retrieve_products
    end
    
    def contact
    end
    
    def pr_contact      
    end

  end
end