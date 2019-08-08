Rails.application.routes.draw do
  root to: 'themes#index'
  
  resources :themes

end
