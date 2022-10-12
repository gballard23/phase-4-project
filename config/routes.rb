Rails.application.routes.draw do
 resources :coaches, only: [ :index, :show, :create, :update, :destroy ]
 resources :players, only: [ :index, :show, :create ]
  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
