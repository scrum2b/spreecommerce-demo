module Spree
  class Admin::CollectionsController < Admin::ResourceController
    
    respond_to :html, :json, :js
    
    def index
      @collections = Spree::Collection.order(:position).page( params[:page] ? params[:page].to_i : 1 )
    end

    def show
      @collection_product = @collection.collection_products.new
    end
    
    def new
      @collection = Spree::Collection.new
    end
    
    def create
      @collection = Spree::Collection.new(params[:collection])
      @collection.save if @collection
      flash.notice = I18n.t('notice_messages.collection_create')
      respond_with(@collection) do |format|
        format.html { redirect_to collection_url }
      end
    end
    
    def edit
    end

    def update
      @collection.update_attributes(params[:collection])
      @collection.save if @collection
      flash.notice = I18n.t('notice_messages.collection_updated')
      respond_with(@collection) do |format|
        format.html { redirect_to collection_url }
      end
    end

    def destroy
      @collection.delete

      flash.notice = I18n.t('notice_messages.collection_deleted')

      respond_with(@collection) do |format|
        format.html { redirect_to collection_url }
      end
    end

    protected
  
    def find_resource
      @collection = Collection.find_by_permalink!(params[:id])
    end

    def location_after_save
      edit_admin_collection_url(@collection)
    end
    
  end

end

