class MaterialsController < ApplicationController
  require 'will_paginate/array'

  def index
  end

  def search
    # render :json => @@data
    # render json: @data
    # data = JSON.parse(File.read("#{Rails.root}/app/assets/javascripts/materials.json"))
    # puts data
    # @filterData= @data.find_all{|x| x["serialNumber"] == "123456"}
  #   render 'materials/index'
  #   if  params[:material].blank?
  #     filterData = data  
  #   else
  #     filterData= data.find_all{|x| x["serialNumber"] == params[:material]}
  #   end
  #  puts filterData
  # render 'materials/index'
  if  params[:material].blank?
    flash.now[:danger] = "You have entered an empyty symbol"
  else
    @Data = Material.look_up(params[:material])
    @materialData = @Data.paginate(:page => params[:page], :per_page => 2)
    @show_pagination = @materialData.length > 0
    flash.now[:danger] = "You have entered an incorrect symbol" unless @materialData.any?
  end
  respond_to do |format|
    format.html {render 'materials/index'}
    format.js { render partial: 'materials/search'}
  end
end

end
