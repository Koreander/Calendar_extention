Rails.application.routes.draw do
  # Namespace "ics_api" declaration  
  namespace :ics_api do
    resources :assignments
  end
end