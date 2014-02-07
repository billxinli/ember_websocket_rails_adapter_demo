RailsEmberWebsocketDemo::Application.routes.draw do
  resources :posts

  get 'ember/index'

  root 'home#index'
  namespace :api do
    namespace :v1 do
      resources :posts,
                only: [:index, :show, :create, :update, :destroy],
                defaults: { format: 'json' }
    end
  end
end
