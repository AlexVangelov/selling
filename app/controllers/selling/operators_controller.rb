require_dependency "selling/base_controller"

module Selling
  class OperatorsController < BaseController
    private
      def resource_collection
        sellable.selling_operators
      end
      
      def set_resource
        @resource = sellable.selling_operators.find(params[:id])
      end
      
      def resource_params
        params.require(:operator).permit(:name)
      end
  end
end
