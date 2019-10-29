Rails.application.routes.draw do
  get 'newsletter/sign_up'
  get 'newsletter/success'
  resources :referrals
  root 'referrals#index'
end
