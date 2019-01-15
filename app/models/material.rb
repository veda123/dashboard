class Material < ActiveRecord::Base
    self.abstract_class = true

    def self.look_up(material)
        puts "material model"
        puts material
        @data = JSON.parse(File.read("#{Rails.root}/app/assets/javascripts/materials.json"))
        @filterData= @data.find_all{|x| x["serialNumber"] == material}
    end

    # puts data
    # @filterData= @data.find_all{|x| x["serialNumber"] == "123456"}
    # render 'materials/index'
#     if  params[:material].blank?
#       filterData = data  
#     else
#       filterData= data.find_all{|x| x["serialNumber"] == params[:material]}
#     end
#    puts filterData
#   end
end