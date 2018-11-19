Rails.application.routes.draw do
  devise_for :users
  root 'boards#index'


  resources :boards do
    resources :artists 
  end


  resources :artists do
    resources :songs
  end
end