module Spree
  ApplicationController.class_eval do
    before_filter :nav_categories
    
    def nav_categories
      @nav_link = {}
      @taxonomies = Spree::Taxonomy.all
      @taxonomies.each do |taxonomy|
        taxon = taxonomy.taxons.where(:parent_id => taxonomy.id)
        @nav_link.merge!(taxonomy.name => taxon)
      end
      @taxonomies_categories = Spree::Taxonomy.first
      @taxon_categories = @taxonomies_categories.taxons.where(:parent_id => @taxonomies_categories.id) if @taxonomies_categories
    end   
    
  end  
end
