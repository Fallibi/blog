Rails.application.routes.draw do
  # This sets the home page of your application to the articles index page.
  root "articles#index"
  
  resources :articles do
    resources :comments
  end
  
  # This is a default Rails route for health checks. You can leave it here.
  get "up" => "rails/health#show", as: :rails_health_check
end