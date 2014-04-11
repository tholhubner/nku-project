NkuProject::Application.routes.draw do
  get "users/index"
  
  resources :users
  resources :students
  resources :sessions
  resources :cars
  
  delete "sign_out", to: "sessions#destroy"
  get 'signin' => 'sessions#new'
  get 'signup' => 'users#new'
  get "profile" => "users#profile"
  
  root to: "users#index"
end
