require_dependency "selling/application_controller"

module Selling
  class OriginsController < BaseController
    private
      def resource_collection
        sellable.selling_origins
      end
      
      def set_resource
        @resource = sellable.selling_origins.find(params[:id])
      end
      
      def resource_params
        params.require(:origin).permit(:name)
      end
  end
end
