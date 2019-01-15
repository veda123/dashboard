Rails.application.routes.draw do
  get 'transaction/index' => 'transaction#index'
  get 'storage_location/lookup'
  get 'storage_location/search' =>  'storage_location#search'
  get 'materials/search' => 'materials#search'
  get 'materials/index' => 'materials#index'
  # get 'search', to:'material_search#search'
  get 'home/index'
  # root 'home#index'
  root 'materials#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
