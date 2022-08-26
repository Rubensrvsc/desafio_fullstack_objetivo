Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "student#register_student"
  post "create_student", to: "student#create"
  get "index", to: "admin#index"
  get "inscripts", to: "admin#inscripts"
  get "matriculates", to: "admin#matriculates"
  get "details/:id", to: 'admin#student_details'
  post "matricular_aluno", to: "admin#matriculate_student"
end
