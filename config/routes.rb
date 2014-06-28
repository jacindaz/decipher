Rails.application.routes.draw do
  resources :phrases

  get '/phrases/random', to: 'phrases#random'

end
