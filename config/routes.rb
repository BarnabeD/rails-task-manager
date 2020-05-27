Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#list'
  get "tasks/new", to: "tasks#new"
  get "tasks/:id", to: "tasks#show", as: :task
  post "tasks", to: "tasks#create"
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"
  patch "tasks", to: "tasks#uncheck", as: :uncheck
  patch "tasks/", to: "tasks#update", as: :check
  delete "tasks/:id", to: "tasks#destroy"

  # patch 'tasks', to: 'tasks#change_mark'
end
