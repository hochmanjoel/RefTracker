Rails.application.routes.draw do
  resources :main_data
  root 'main_data#index'
end
