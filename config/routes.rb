Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'

  get '/choice', to:'static_pages#choice'

  get '/random', to:'static_pages#random'
  
  post '/update', to:'static_pages#update'

  post '/saveDB', to:'static_pages#saveDB'

  delete '/deleteColor', to:'static_pages#deleteColor'

  get '/signup', to: 'users#new'

  post '/signup', to: 'users#create'

  get '/signin', to: 'sessions#new'
  
  post '/signin', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
