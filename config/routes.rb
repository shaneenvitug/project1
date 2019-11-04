Rails.application.routes.draw do
  root :to => 'contacts#index'

  # resources is only for CRUD operations
  resources :users, :only => [:new, :create] # same as - :except => [:destroy]
  resources :contacts
  resources :groups
  # login is not CRUD
  get '/login' => 'session#new' # This will be our sign-in page.
  post '/login' => 'session#create' # This will be the path to which the sign-in form is posted
  delete '/login'=> 'session#destroy' # This will be the path users use to log-out.

end
