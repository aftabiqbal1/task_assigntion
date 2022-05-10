Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "add_task", to: "tasks#new"
  post "add_task", to: "tasks#create"

  get "show_admin_tasks", to: "tasks#show"
  get "show_staff_tasks", to: "tasks#showStaffTasks"

  get "assign_task", to: "assigneds#new"
  post "assign_task", to: "assigneds#create"

  get "add_staff_user", to: "staffs#new"
  post "add_staff_user", to: "staffs#create"

  devise_for :users, controllers: {passwords: "users/passwords"}, only: [:edit, :update, :create]

  # Defines the root path route ("/")
  root "home#index"
end
