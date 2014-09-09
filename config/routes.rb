Rails.application.routes.draw do
  resources :jobs do
    get :search, on: :collection
  end

  root to: "jobs#index"
end
