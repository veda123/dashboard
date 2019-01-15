class StorageLocation < ApplicationRecord
    def self.look_up(storage)
        puts "storage model"
        puts storage
        @data = JSON.parse(File.read("#{Rails.root}/app/assets/javascripts/storageLocation.json"))
        @filterData= @data.find_all{|x| x["SLOC"] == storage}
    end
end
