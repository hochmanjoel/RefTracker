Rails.application.routes.draw do
  resources :referrals
  root 'referrals#index'
end
