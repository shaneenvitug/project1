Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :except => [:destroy] # same as - :only => [:new, :create]
end
