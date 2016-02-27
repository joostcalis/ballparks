Rails.application.routes.draw do
  root 'info#index'
  resources :ballparks, only: [:index, :show]
end
