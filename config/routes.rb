# require 'api_constraints'

Rails.application.routes.draw do
  scope module: :api do
    namespace :v1 do
      # Use for login and autorize all resource
      use_doorkeeper do
        # No need to register client application
        skip_controllers :applications, :authorized_applications
      end
      devise_for :users, controllers: {
        registrations: 'api/v1/users/registrations',
      }, skip: [:sessions, :password]
      resources :people
    end
  end
end