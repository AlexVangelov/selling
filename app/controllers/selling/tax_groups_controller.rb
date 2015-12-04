require_dependency "selling/application_controller"

module Selling
  class TaxGroupsController < BaseController
    private
      def resource_collection
        sellable.selling_tax_groups
      end
      
      def set_resource
        @resource = sellable.selling_tax_groups.find(params[:id])
      end
      
      def resource_params
        params.require(:tax_group).permit(:name)
      end
  end
end
