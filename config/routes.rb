Rails.application.routes.draw do
  resources :codes
  resources :instructors
  post '/instructor_login', to: 'instructors#login'
  get '/instructor_students/:id', to: 'instructors#all_students'
  get '/instructor_me', to: 'instructors#me'

  resources :merits
  get '/merits/:category', to: 'merits#category'

  resources :students
  get '/students/:immortal_house', to: 'students#house'
  # patch '/students/:id', to: 'students#update_merits'
  
  # get '/instructor_students/:instructor_id', to: 'students#instructor_students'
  resources :users
  post '/parent_login', to: 'users#login'
  get '/parent_me', to: 'users#me'
  get '/child_info/:id', to: 'users#child_details'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
