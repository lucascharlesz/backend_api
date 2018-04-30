# require 'api_constraints'

Rails.application.routes.draw do
  # Use for login and autorize all resource
  use_doorkeeper do
    # No need to register client application
    skip_controllers :applications, :authorized_applications
  end

  scope module: :api do
    namespace :v1 do
      devise_for :users, controllers: {
        registrations: 'api/v1/users/registrations',
      }, skip: [:sessions, :password]
      # resources :people
    end
  end
end