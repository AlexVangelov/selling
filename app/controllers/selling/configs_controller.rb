require_dependency "selling/application_controller"

module Selling
  class ConfigsController < ApplicationController
    def show
      @config = sellable.selling_config || sellable.build_selling_config
    end
  end
end
