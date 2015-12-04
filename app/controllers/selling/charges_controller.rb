require_dependency "selling/application_controller"

module Selling
  class ChargesController < ApplicationController
    
    def create
      @charge = Charge.new(charge_params)
    end
    
    private
      def charge_params
        params.require(:charge).permit(:name)
      end
  end
end
