Rails.application.routes.draw do
  root 'referrals#index'
  get 'newsletter/sign_up/:id', to: 'newsletter#sign_up'
  post 'newsletter/sign_up/:id', to: 'newsletter#submit'
  get 'newsletter/success/:id', to: 'newsletter#success'

  # Routes for Google authentication
  get 'auth/:provider/callback', to: 'sessions#googleAuth'
  get 'auth/failure', to: redirect('/')
end
