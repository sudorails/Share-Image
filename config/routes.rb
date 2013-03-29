ShareAlbum::Application.routes.draw do
  resources :profiles
  resources :images
  resources :albums
  devise_for :users

  root :to => 'dashboard#index'

end
