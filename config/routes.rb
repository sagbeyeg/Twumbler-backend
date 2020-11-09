Rails.application.routes.draw do

  #/api/v1/recipes/1
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
