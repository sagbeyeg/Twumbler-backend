Rails.application.routes.draw do

  #/api/v1/users
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

  #/api/v1/posts
  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
