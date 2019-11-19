Rails.application.routes.draw do
  #get 'sessions/new'

  root 'referrals#index'
  get '/signup', to: 'admins#new'
  get 'referrals/details'
  get 'newsletter/sign_up/:id', to: 'newsletter#sign_up'
  post 'newsletter/sign_up/:id', to: 'newsletter#submit'
  get 'newsletter/success/:id', to: 'newsletter#success'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  #post "/signin", to: "sessions#create", as: "signin"
  delete '/logout', to: 'sessions#destroy'
  resources :admins
end
