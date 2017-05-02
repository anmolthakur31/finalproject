Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  devise_scope :user do
  	get '/users/sign_out' => 'devise/sessions#destroy'
  end 
  root "extras#home"  
  resources :services
    get 'home' => 'extras#home'
  get 'faq' => 'extras#faq'
  get 'our_team' => 'extras#our_team'
  get 'about_us' => 'extras#about_us'
  get 'tnc' => 'extras#tnc'
  get 'privacy_policy' => 'extras#privacy_policy'
  root to: 'services#index'
  resources :messages
  resources :prelandings
  resources :brands
  resources :models
  resources :variants
  resources :vehicles
  resources :uservehicles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
