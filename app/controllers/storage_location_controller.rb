class StorageLocationController < ApplicationController
  def lookup
  end

  def search
    if  params[:storage].blank?
      flash.now[:danger] = "You have entered an empty location number"
    else
      @location = StorageLocation.look_up(params[:storage])
      # @materialData = @Data.paginate(:page => params[:page], :per_page => 2)
      # @show_pagination = @materialData.length > 0
      flash.now[:danger] = "You have entered an incorrect symbol" unless @location.any?
    end
    respond_to do |format|
      format.html {render 'storage_location/lookup'}
      # format.js { render partial: 'materials/search'}
    end
  end
end
