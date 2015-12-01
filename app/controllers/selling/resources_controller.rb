require_dependency "selling/application_controller"

module Selling
  class ResourcesController < BaseController
    private
      def resource_collection
        sellable.selling_resources
      end
      
      def set_resource
        @resource = sellable.selling_resources.find(params[:id])
      end
      
      def resource_params
        params.require(:resource).permit(:name)
      end
  end
end
