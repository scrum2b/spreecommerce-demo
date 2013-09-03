source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails', '3.2.14'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
group :development do
  gem 'sqlite3'
  #gem 'pg'
end

group :production do 
  gem 'thin'
  gem 'pg'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

gem 'spree', '2.0.4'
gem 'spree_auth_devise', :git => 'https://github.com/spree/spree_auth_devise.git',:branch => "2-0-stable"
gem 'spree_shipment', :path => 'extensions/spree_shipment'
#gem 'spree_spree2_clothes_shop',:git => 'https://github.com/scrum2b/spree2_clothes_shop.git'
gem 'spree_spree2_clothes_shop',:path => 'extensions/spree_spree2_clothes_shop'
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
