Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/videos', to: 'videos#index'
  get '/videos/:id', to: 'videos#show'
  get '/movies', to: 'videos#movies'
  get '/users/stay_logged_in', to: 'users#stay_logged_in'
  post '/users', to: 'users#create'
  post '/users/login', to: 'users#login'
end
