# require 'api_constraints'

Rails.application.routes.draw do

  scope module: :api do 
    namespace :v1 do
        resources :people
    end

    # namespace :v2 do
    #     resources :people
    # end
  end

end