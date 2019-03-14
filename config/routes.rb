Rails.application.routes.draw do

  root 'top#index'

  get '/sign-up', to: 'sign_up#index'
  get '/log-in', to: 'log_in#index'
  get '/buy', to: 'buy#index'
  get '/how-does-it-work', to: 'how_does_it_work#index'
  get '/privacy', to: 'privacy#index'
  get '/terms', to: 'terms#index'
  get '/about', to: 'about#index'
  get '/contact', to: 'contact#index'
  get '/help', to: 'help#index'

  get '/myaccount', to: 'myaccount#index'
  get '/profile', to: 'profile#index'
  get '/reset', to: 'reset#index'
  get '/limits', to: 'limits#index'
  get '/log-out', to: 'log_out#index'

  namespace :admin do
  
    root 'top#index'
  
    resources :orders
    resources :users
  
  end

end