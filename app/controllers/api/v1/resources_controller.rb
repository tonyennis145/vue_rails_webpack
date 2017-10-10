module Api::V1
  class ResourcesController < ApplicationController
  
    respond_to :json
    
    def index
      render json: {}
    end

    def show
    end

  end
end