Rails.application.routes.draw do

  get 'login', to: 'session#new'

  post 'login', to:'session#create'

  get 'logout', to:'session#destroy'

  root "site#home"

  get '/', to: "site#home"

  get '/contact', to: "site#contact"

  get '/about', to: "site#about"

  get '/signup', to: "user#new"
  post '/signup', to: "user#create"

  namespace :admin do
    resources :level
  end

  resources :user, :only => [:create, :show, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
