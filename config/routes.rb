Rails.application.routes.draw do  
  namespace :ics_api do
    resources :assignments
  end
end