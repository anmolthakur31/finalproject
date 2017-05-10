Rails.application.routes.draw do
  get 'errors/not_found'

  get 'errors/internal_server_error'
  match "/404", :to => "errors#not_found", :via => :all
match "/500", :to => "errors#internal_server_error", :via => :all

  devise_for :users, :controllers => { registrations: 'registrations' }
  devise_scope :user do
  	get '/users/sign_out' => 'devise/sessions#destroy'
  end 
  root "extras#home"  
  resources :services
  get 'home' => 'extras#home'
    get 'admin' => 'extras#admin'
  get 'faq' => 'extras#faq'
  get 'our_team' => 'extras#our_team'
  get 'about_us' => 'extras#about_us'
  get 'tnc' => 'extras#tnc'
  get 'privacy_policy' => 'extras#privacy_policy'
  resources :messages
  resources :prelandings
  resources :brands
  resources :models
  resources :variants
  resources :vehicles
  resources :uservehicles
  resources :userroles
  resources :bookings
  # map.check_email "registrations/check_email", :controller => "registrations", :action => "check_email"
  # map.resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
