Rails.application.routes.draw do
  get '/', to: 'static_pages#home'
  get '/new', to: 'user_controller#new'
  post '/new', to: 'user_controller#create'
  get '/user/:id', to: 'user_controller#user', as: :name
  get '/error', to: 'user_controller#error'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
