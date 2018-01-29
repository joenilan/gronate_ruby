Rails.application.routes.draw do
  resources :donations
  resources :payment_notifications
  devise_for :users
  resources :homes, path: "home"
  resources :users, path: "grs"
  root to: 'homes#index'

end
