Rails.application.routes.draw do
  resources :features
  resources :characters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # welcome page
  root 'characters#index'

  # for API
  namespace :api do
    namespace :v1 do
      namespace :features do
        get "/get" , :action => "get"
      end
      namespace :characters do
        get "/get" , :action => "get"
      end
    end
  end

end
