require_dependency "selling/base_controller"

module Selling
  class PaymentTypesController < BaseController
    private
      def resource_collection
        sellable.selling_payment_types
      end
      
      def set_resource
        @resource = sellable.selling_payment_types.find(params[:id])
      end
      
      def resource_params
        params.require(:payment_type).permit(:name, :cash)
      end
  end
end
