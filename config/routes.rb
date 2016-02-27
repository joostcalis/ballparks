Rails.application.routes.draw do
resources :ballparks, only: [:index, :show]
end
