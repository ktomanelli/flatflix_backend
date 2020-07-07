Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/videos', to: 'videos#index'
  get '/videos/:id', to: 'videos#show'
end
