Spree::Core::Engine.routes.draw do

  # Add your extension routes here
  get "/contact" => "home#contact"
  get "/pr_contact" => "home#pr_contact"

  match "/categories/show" => "taxons#show"

end
