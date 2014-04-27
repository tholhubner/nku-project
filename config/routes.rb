NkuProject::Application.routes.draw do
  get "users/index"
  
  resources :users
  resources :students
  resources :sessions
  resources :cars do
    resources :comments
  end
  
  delete "sign_out", to: "sessions#destroy"
  get 'signin' => 'sessions#new'
  get 'signup' => 'users#new'
  get 'profile' => "users#profile"
  get 'all_users' => "users#all"
  
  root to: "users#index"
end
