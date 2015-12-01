require_dependency "selling/application_controller"
module Selling
  class BaseController < ApplicationController
    
    before_action :set_resource, only: [:show, :update, :destroy]
    
    def index
      @resources = resource_collection.all
    end
    
    def show
    end
    
    def create
      @resource = resource_collection.new(resource_params)

      if @resource.save
        render :show, status: :created, location: @resource 
      else
        render json: @resource.errors, status: :unprocessable_entity
      end
    end
    
    def update
      if @resource.update(resource_params)
        render :show, status: :ok, location: @resource
      else
        render json: @resource.errors, status: :unprocessable_entity
      end
    end
    
    def destroy
      @resource.destroy
      head :no_content
    end
  end
end