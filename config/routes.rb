Rails.application.routes.draw do
  resources :users, controller: 'newsletter'
  get 'referrals/index'
  get 'referrals/details'
  get 'newsletter/sign_up/:id', to: 'newsletter#sign_up'
  post 'newsletter/sign_up/:id', to: 'newsletter#submit'
  get 'newsletter/success/:id', to: 'newsletter#success'
  root 'referrals#index'
end
