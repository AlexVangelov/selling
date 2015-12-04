module Selling
  class ApplicationController < ActionController::Base
    prepend_before_filter :include_concern
    
    def default_url_options(options={})
      sellable ? options.merge(uuid: sellable.uuid) : options
    end
    
    private
      
      def include_concern
        self.class.send(:include, Selling.mapping.concern) if Selling.mapping.concern.present?
      end
      
      def sellable
        self.class.send(:include, Selling.mapping.concern) if Selling.mapping.concern.present?
        #@sellable ||= current_account.businesses.find_by_uuid params[:uuid]
        @sellable ||= self.send(Selling.mapping.sellable)
      end
  end
end