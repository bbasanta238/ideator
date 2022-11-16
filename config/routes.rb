Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        confirmations: 'users/confirmations',
        # omniauth_callbacks: 'users/omniauth_callbacks',
        registerations: 'users/registerations',
        unlocks: 'users/unlocks'

      }

  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'about' => 'static_pages#about'
  get 'random' => 'static_pages#random'


  # Defines the root path route ("/")
  # root "articles#index"
  root "ideas#index"

  resources :ideas do
    resources :codes
  end
end
