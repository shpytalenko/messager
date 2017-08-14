Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/back_office', as: 'rails_admin'
  resources :alerts
  get "content/silver"
  get "content/gold"
  get "content/platinum"
  get "visitors/index", as: :home
  mount Payola::Engine => '/payola', as: :payola
  root to: 'visitors#index'
  
  get 'products/:id', to: 'products#show', :as => :products
  devise_for :users, :controllers => { :registrations => 'registrations' }
  devise_scope :user do
    put 'change_plan', :to => 'registrations#change_plan'
  end
  resources :users
end
