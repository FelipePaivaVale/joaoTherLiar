Rails.application.routes.draw do
  root 'mensagems#index'
  resources :mensagems
end
