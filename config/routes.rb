Rails.application.routes.draw do
  root to: 'themes#index'
  
  resources :themes do 
  resources :posts, only: [:show,:create, :destroy]
end
end
