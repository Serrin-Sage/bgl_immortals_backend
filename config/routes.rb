Rails.application.routes.draw do
  resources :instructors
  post '/instructor_login', to: 'instructors#login'
  get '/instructor_students/:id', to: 'instructors#all_students'

  resources :merits
  get '/merits/:category', to: 'merits#category'

  resources :students
  get '/students/:immortal_house', to: 'students#house'
  
  # get '/instructor_students/:instructor_id', to: 'students#instructor_students'
  resources :users
  post '/parent_login', to: 'users#login'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
