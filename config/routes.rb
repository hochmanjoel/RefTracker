Rails.application.routes.draw do
  get 'signup', to: 'admins#new'
  root 'referrals#index'
  get 'referrals/details'
  get 'newsletter/sign_up/:id', to: 'newsletter#sign_up'
  post 'newsletter/sign_up/:id', to: 'newsletter#submit'
  get 'newsletter/success/:id', to: 'newsletter#success'
  #get '/admin_signup', to: 'admins#new'
  resources :admins
end
