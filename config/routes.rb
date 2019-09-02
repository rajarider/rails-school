Rails.application.routes.draw do
  devise_for :users
  root :to => 'visitors#index'

  resources :marks
  authenticated :user do
      resources :subjects
      resources :teachers
      resources :students
      post 'teachers/new', :to => 'teachers#create'

  end
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
