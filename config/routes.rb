Rails.application.routes.draw do
  resources :instructors
  get '/instructor_students/:id', to: 'instructors#all_students'

  resources :merits
  get '/merits/:category', to: 'merits#category'

  resources :students
  get '/students/:immortal_house', to: 'students#house'
  
  # get '/instructor_students/:instructor_id', to: 'students#instructor_students'
  resources :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
