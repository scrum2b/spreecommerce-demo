source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails', '3.2.14'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
group :development do
  gem 'sqlite3'
  gem 'mailcatcher'
  #gem 'pg'
end

group :production do 
  gem 'thin'
  gem 'pg'
  gem 'aws-sdk'
  gem 'memcachier'
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

gem 'activemerchant',         :github => 'dotandbo/active_merchant',        :branch => 'master'
gem 'spree_related_products', :github => 'dotandbo/spree_related_products', :branch => 'master'
gem 'spree_static_content',  :github => 'spree/spree_static_content',      :branch => '2-0-stable'
gem 'spree_tax_cloud',        :github => 'dotandbo/spree_tax_cloud',        :branch => '2-0-stable'

gem 'spree_spree2_clothes_shop', :path => 'extensions/spree2_clothes_shop'
gem 'spree_product_collections', :path => 'extensions/spree_product_collections'
#gem 'spree_spree2_clothes_shop',:git => 'https://github.com/scrum2b/spree2_clothes_shop.git'
#gem 'spree_product_collections', github: 'scrum2b/spree_product_collections'

gem 'spree_self_delivery', :path => 'extensions/spree_self_delivery'
#gem 'spree_self_delivery', github: 'secoint/spree_self_delivery'
gem 'spree_bank_transfer', :path => 'extensions/spree-bank-transfer'
#gem 'spree_bank_transfer', :github => 'fuyo/spree-bank-transfer', :tag => 'v1.0.0' # github.com

gem 'spree_multi_seller', github: 'pavelnikolov/spree_multi_seller'
gem 'spree_group_pricing', github: 'jdutil/spree_group_pricing'

#gem 'spree-pos', github: 'CodeCantor/spree-pos'
#gem 'spree-pos', :path => 'extensions/spree-pos'

# Could not use because it get spree_promo which is not supported in spree2
#gem 'spree_multi_lingual', :path => 'extensions/spree_multi_lingual'
#gem 'spree_multi_lingual', github: 'jipiboily/spree_multi_lingual',        :branch => '1-3-stable'

#gem "spree_cms", :git => 'git://github.com/kiba/spree-cms.git'

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
