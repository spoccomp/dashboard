Rails.application.routes.draw do
  resources :user_role
  resources :teacher
  resources :student
  resources :role
  resources :profile
  resources :permission
  resources :educational_level
  resources :course
  resources :cohort
  resources :administrator
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
