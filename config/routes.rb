Rails.application.routes.draw do
<<<<<<< HEAD
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
=======
  root to: 'referrals#index'
  get 'referrals/details'
  get 'newsletter/sign_up/(:id)', to: 'newsletter#sign_up'
  post 'newsletter/sign_up/(:id)', to: 'newsletter#submit'
  get 'newsletter/success/(:id)', to: 'newsletter#success'
>>>>>>> 09206d15a5bfaf49fbbeeeb930491cb02ac263c7
end
