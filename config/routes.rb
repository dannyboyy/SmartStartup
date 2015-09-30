# == Route Map
#
#        Prefix Verb   URI Pattern                    Controller#Action
#     resources GET    /resources(.:format)           resources#index
#               POST   /resources(.:format)           resources#create
#  new_resource GET    /resources/new(.:format)       resources#new
# edit_resource GET    /resources/:id/edit(.:format)  resources#edit
#      resource GET    /resources/:id(.:format)       resources#show
#               PATCH  /resources/:id(.:format)       resources#update
#               PUT    /resources/:id(.:format)       resources#update
#               DELETE /resources/:id(.:format)       resources#destroy
#    categories GET    /categories(.:format)          categories#index
#               POST   /categories(.:format)          categories#create
#  new_category GET    /categories/new(.:format)      categories#new
# edit_category GET    /categories/:id/edit(.:format) categories#edit
#      category GET    /categories/:id(.:format)      categories#show
#               PATCH  /categories/:id(.:format)      categories#update
#               PUT    /categories/:id(.:format)      categories#update
#               DELETE /categories/:id(.:format)      categories#destroy
#          root GET    /                              categories#index
#

Rails.application.routes.draw do
  resources :reviews
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  
  resources :categories do
  	resources :resources do 
  		collection { post :import }
  	end
  end

  root 'categories#index'

end
