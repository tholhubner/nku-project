NkuProject::Application.routes.draw do
  get "users/index"
  
  resources :students
  resources :sessions
  
  delete "sign_out", to: "sessions#destroy"
  get 'signin' => 'sessions#new'
  get "profile" => "users#edit"
  get "new" => "users#new"
  
  root to: "users#index"
end
