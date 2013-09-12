BenGeocachingApp::Application.routes.draw do
  resources :tracks


  resources :geocaches


  authenticated :user do
    root :to => 'geocaches#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end