Rails.application.routes.draw do
  devise_for :users
  resources :services
  get 'faq' => 'extras#faq'
  get 'our_team' => 'extras#our_team'
  get 'about_us' => 'extras#about_us'
  get 'tnc' => 'extras#tnc'
  get 'privacy_policy' => 'extras#privacy_policy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
