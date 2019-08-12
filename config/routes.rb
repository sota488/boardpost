Rails.application.routes.draw do
  root to: 'themes#index'
  
  resources :themes do 
  resources :posts, only: [:create, :destroy]
end
end
