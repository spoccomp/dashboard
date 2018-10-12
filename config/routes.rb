Rails.application.routes.draw do
  get 'pages/secret'
  resources :email_pages
  resources :admin_pages
  resources :welcoms
  resources :user_roles
  resources :teachers
  # get 'controllerName/method or action'
  get 'change' => 'teachers#change'
  resources :students
  # get 'changeS' => 'students#change'
  resources :roles
  resources :profiles
  resources :permissions
  resources :courses
  resources :cohorts
  resources :administrators
  # resources :admins
  # root to: 'admins#new'
  get 'admins/new' => 'admins#new', as: :new_admin
  post 'admins' => 'admins#create'
  get '/login' => 'sessions#new'
  post '/login'=>  'sessions#create'
  delete '/logout' => 'sessions#destroy'
  root 'welcoms#index'
  # root to: 'admins#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
