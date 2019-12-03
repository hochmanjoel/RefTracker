Rails.application.routes.draw do
  root to: 'referrals#index'
  get 'referrals/details'
  get 'newsletter/sign_up', to: 'newsletter#sign_up'
  get 'newsletter/sign_up/:id', to: 'newsletter#sign_up'
  post 'newsletter/sign_up/:id', to: 'newsletter#submit'
  get 'newsletter/success/:id', to: 'newsletter#success'
end
