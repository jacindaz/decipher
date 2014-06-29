Rails.application.routes.draw do

  root to: 'phrases#index'
  resources :phrases

end
