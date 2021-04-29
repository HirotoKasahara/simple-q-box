Rails.application.routes.draw do
 root to: 'toppages#index'
 
 get 'login',to: 'sessions#new'
 post 'login',to: 'sessions#create'
 delete 'logout',to: 'sessions#destroy'
 
 get 'signup',to: 'users#new'
 resources :users,only: [:create,:show]
 resources :questions,only: [:new,:create,:destroy,:show]
 resources :answers,only: [:create,:destroy]
end