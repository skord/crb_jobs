Rails.application.routes.draw do

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  resources :candidates
  resources :jobs do
    get :search, on: :collection
  end

  get '/unsubscribe/:token', to: 'candidates#unsubscribe', as: 'unsubscribe'

  root to: "jobs#index"

end
