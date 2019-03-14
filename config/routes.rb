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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
