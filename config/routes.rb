Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  ActiveAdmin.routes(self)
  root 'main#index'
  resources :subscribers
  resources :survey_results, only: :create
end
