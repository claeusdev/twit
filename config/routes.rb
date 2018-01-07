Rails.application.routes.draw do
  get 'replies/new'

  get 'replies/create'

  get 'replies/show'

  get 'tweets/create'

  get 'tweets/show'

  resources :tweets do 
  	resources :reply, only: [:create]
  end
  devise_for :users
  
  root "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
