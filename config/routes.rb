Rails.application.routes.draw do
  root "root#index"
  resources :meeting_entries, only: [:new, :create]
  get "meeting_entries/agreement" => "meeting_entries#agreement"
  resources :questions, only: [:new, :create]
  get "questions/agreement" => "questions#agreement"

  get 'questions/new'
  get 'questions/agreement'
  get 'meeting_entries/new'
  get 'root/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
