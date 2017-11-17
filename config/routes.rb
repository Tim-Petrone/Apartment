Rails.application.routes.draw do
  get 'admin/index'

  get 'admin/update'

  get "admin" => "admin#index"
  put "admin/:id" => "admin#update"
  patch "admin/:id" => "admin#update"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :apartments
  root 'apartments#index'
  get 'basic_search' => 'apartments#basic_search'
  get '/apartments/index' => 'apartments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
