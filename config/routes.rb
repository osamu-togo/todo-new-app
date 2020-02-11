Rails.application.routes.draw do
  devise_for :users
  
  root to: 'posts#index'
  resources :posts, except: :index do
    put :sort
  end
  resources :users

end
