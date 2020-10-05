Rails.application.routes.draw do
  root 'welcome#index'
  resources :games
  resources :comments
  resources :posts
  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
