Rails.application.routes.draw do
  get 'referrals/index'
  get 'referrals/details'
  get 'newsletter/sign_up'
  get 'newsletter/success'
  root 'referrals#index'
end
