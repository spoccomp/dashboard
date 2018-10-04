Rails.application.routes.draw do
  resources :email_pages
  resources :admin_pages
  resources :teacher_pages
  resources :student_pages
  resources :welcoms
  resources :user_roles
  resources :teachers
  # get 'controllerName/method or action'
  get 'change' => 'teachers#change'
  resources :students
  resources :roles
  resources :profiles
  resources :permissions
  resources :educational_levels
  resources :courses
  resources :cohorts
  resources :administrators
  root 'welcoms#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
