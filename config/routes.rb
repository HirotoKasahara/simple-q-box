Rails.application.routes.draw do
 root to: 'toppages#index'
 
 get 'login',to: 'sessions#new'
 post 'login',to: 'sessions#create'
 delete 'logout',to: 'sessions#destroy'
 
 get 'signup',to: 'users#new'
 resources :users,only: [:create,:show]
 resources :questions,only: [:new,:create,:destroy,:show] do
   get :search , on: :collection
  end 
  resources :answers,only: [:create,:destroy]
 resources :password_resets,only: [:new,:create,:edit,:update]
 
resources :cakes,only: [:create,:show,:edit,:update]
resources :mokuhyous,only: [:new,:create,:edit,:update]
end
