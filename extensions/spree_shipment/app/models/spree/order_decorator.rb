module Spree
  Order.class_eval do
    def first_scanned_at
      return Time.now.prev_month
    end
    
    def delived_at
      return Time.now
    end
    
    def shipper
      return "FedEX"
    end
    
    def shipping_method
      return "GROUND_HOME_DELIVERY"
    end
  end
end
