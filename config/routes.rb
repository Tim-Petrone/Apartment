Rails.application.routes.draw do
  resources :apartments
  get 'basic_search' => 'apartments#basic_search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
