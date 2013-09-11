module Spree
  class Admin::CollectionProductsController < Admin::ResourceController
    
    before_filter :load_data, :only => [:create, :destroy, :new]

    respond_to :js, :html

    def new
      @collection_product = @collection.collection_products.new
    end
    
    def create
      @collection_product = Spree::CollectionProduct.new(params[:relation])
      @collection_product.product = @product
      @collection_product.save

      respond_with(@collection_product)
    end

    def update_positions
      params[:positions].each do |id, index|
        model_class.where(:id => id).update_all(:position => index)
      end
  
      respond_to do |format|
        format.js  { render :text => 'Ok' }
      end
    end

    def destroy
      @collection_product = Spree::CollectionProduct.find(params[:id])
      @collection_product.destroy

      respond_with(@collection_product)
    end

    private

    def load_data
      @collection = Spree::Collection.find_by_permalink(params[:collection_id])
    end

    def model_class
      Spree::CollectionProduct
    end
  end
  
end
