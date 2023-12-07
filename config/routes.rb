Rails.application.routes.draw do
  #read all - fetching all data records from tasks model
  get "tasks", to:'tasks#index'

  #create new tasks
  get "tasks/new", to:'tasks#new', as: :new_task
  post "tasks", to:"tasks#create"

  #read one - you want to show 1 particular record
  get "tasks/:id", to:"tasks#show", as: :task

  #update
  get "tasks/:id/edit", to:"tasks#edit", as: :edit_task
  patch "tasks/:id", to:"tasks#update"

  #delete
  delete "tasks/:id", to:"tasks#destroy"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
