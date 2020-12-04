Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs
  
  
  namespace :preference do
    resources :stats, only: [:index]
  end


end
