Rails.application.routes.draw do
  root 'books#index'

  #books
  get 'books' => 'books#index'
  get 'books/new' => 'books#new'
  post 'books/create' => 'books#create'
  post 'books/update' => 'books#update'
  patch 'books/delete' => 'books#delete'
  get 'books/confirmation' => 'books#confirmation'

  #sessions = login/logout
  get 'users/login' => 'sessions#login'
  post 'users/login_confirmation' => 'sessions#confirmation'
  get 'users/logout' => 'sessions/logout'

  #http verb - 'resource/route'=> mapped to controller methof
  get 'users/register' => 'users#signup'
  post 'users/confirmation' => 'users#confirmation'

end
