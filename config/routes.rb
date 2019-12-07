Rails.application.routes.draw do
  get 'how_to/index'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :polls
    resources :user
    root 'home#index'
    
    get 'user/index' 
end
