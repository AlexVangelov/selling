require_dependency "selling/application_controller"

module Selling
  class ResourceTypesController < BaseController
    private
      def resource_collection
        sellable.selling_resource_types
      end
      
      def set_resource
        @resource = sellable.selling_resource_types.find(params[:id])
      end
      
      def resource_params
        params.require(:resource_type).permit(:name)
      end
  end
end
