Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  get "/contact" => "home#contact"
  get "/about" => "home#about"
  get "/help" => "home#help"
  get "/support" => "home#support"
  get "/pr_contact" => "home#pr_contact"
  get "/distribution" => "home#distribution"
  get "/resellers" => "home#resellers"
  get "/corporate" => "home#corporate"
  get "/promotional" => "home#promotional"
  get "/affiliates" => "home#affiliates"
  get "/our_brand" => "home#our_brand"
  get "/press_media" => "home#press_media"
  get "/shipping" => "home#shipping"
  get "/ip_fakes" => "home#ip_fakes"
  get "/terms_conditions" => "home#terms_conditions"
  get "/privacy" => "home#privacy"
  
  match "/categories/show" => "taxons#show"
  
  
end
