Rails.application.routes.draw do
  root "root#index"
  resources :meeting_entries, only: [:index, :new, :create]
  get "meeting_entries/agreement" => "meeting_entries#agreement"
  get "meeting_entries/confirmation" => "meeting_entries#confirmation"
  resources :questions, only: [:index, :new, :create]
  get "questions/agreement" => "questions#agreement"
  get "questions/confirmation" => "questions#confirmation"


  get 'questions/new'
  get 'questions/agreement'
  get 'meeting_entries/new'
  get 'root/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
