# require 'api_constraints'

Rails.application.routes.draw do
  resources :organizations
  scope module: :api do 
    namespace :v1 do
        resources :people
    end
  end
end