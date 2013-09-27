require 'spree/core'

namespace :s2b_theme do
  desc "import data from java api database"
  
  task :initial_product_attributes => :environment do
    
    Spree::RelationType.create(:name => "Accessories", :applies_to => "Spree::Product")
    
  end
  
  task :create_static_pages => :environment do
    
    sample = %Q(Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus. Morbi ut mi. 
                     Nullam enim leo, egestas id, condimentum at, laoreet mattis, massa. Sed eleifend nonummy diam. 
                     Praesent mauris ante, elementum et, bibendum at, posuere sit amet, nibh. 
                     Duis tincidunt lectus quis dui viverra vestibulum. Suspendisse vulputate aliquam dui. 
                     Nulla elementum dui ut augue. Aliquam vehicula mi at mauris. 
                     Maecenas placerat, nisl at consequat rhoncus, sem nunc gravida justo, quis eleifend arcu velit quis lacus.)
    sample_body = [sample, sample, sample, sample].join("<br/>\n<br/>\n")

    page_contents = [{:title => "About Us", :slug => "about_us"}]
    page_contents << {:title => "Our Brand", :slug => "about_us/our_brand"}
    page_contents << {:title => "Press & Media", :slug => "about_us/press_media"}
    page_contents << {:title => "Shipping", :slug => "about_us/shipping"}
    page_contents << {:title => "Legal", :slug => "about_us/legal"}
    page_contents << {:title => "ip & fakes", :slug => "about_us/legal/ip_fakes"}
    page_contents << {:title => "terms conditions", :slug => "about_us/legal/terms_conditions"}
    page_contents << {:title => "Privacy", :slug => "about_us/legal/privacy"}
    #page_contents << {:title => "Contact", :slug => "contact"}
    page_contents << {:title => "Support", :slug => "contact/support"}
    page_contents << {:title => "Trade", :slug => "contact/trade"}
    page_contents << {:title => "Distribution", :slug => "contact/trade/distribution"}
    page_contents << {:title => "Resellers", :slug => "contact/trade/resellers"}
    page_contents << {:title => "Promotional", :slug => "contact/trade/promotional"}
    page_contents << {:title => "Corporate", :slug => "contact/trade/corporate"}
    page_contents << {:title => "Affiliates", :slug => "contact/trade/affiliates"}
  
    page_contents.each do |page_content|
      page = Spree::Page.new(page_content.merge(:body => sample_body, :visible => true, :show_in_header => false, :show_in_footer => false, :show_in_sidebar => false))
      if page.valid? && page.save
        puts "Inserted page: #{page_content[:title]} - #{page_content[:slug]}"
      else
        puts "Invalid page: #{page.errors.full_messages}"
      end
    end
  end
  
  
end