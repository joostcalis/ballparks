Rails.application.routes.draw do
  root 'info#index'
  resources :ballparks, only: [:index, :show] do
    resources :reviews, only: [:create]
  end
end
