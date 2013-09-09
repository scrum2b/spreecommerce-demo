  
Spree::Core::Engine.routes.prepend do
  # Add your extension routes here
  namespace :admin do
    
    resources :collections do
      collection do
        get :index
      end

      resources :products, :controller => "collection_products" do
        collection do
          post :update_positions
        end
      end
    end
  end
end
