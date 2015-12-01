module Selling
  class ApplicationController < ActionController::Base
    
    def default_url_options(options={})
      sellable ? options.merge(uuid: sellable.uuid) : options
    end
    private
      def sellable
        @sellable ||= current_account.businesses.find_by_uuid params[:uuid]
      end
  end
end