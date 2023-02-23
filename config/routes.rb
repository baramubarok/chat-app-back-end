Rails.application.routes.draw do
  resources :room_messages
  resources :rooms
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root controller: :rooms, action

  get 'rooms', to: 'rooms#index'
  post 'rooms', to: 'rooms#create'
  get 'room/:id', to: 'rooms#show'
  post 'room/delete', to: 'rooms#delete'
  
  get 'users', to: 'rooms#getuser'
  post 'user/create', to: 'rooms#user'

  get 'message', to: 'room_messages#chat'
  post 'message/send-message', to: 'room_messages#create'
end
