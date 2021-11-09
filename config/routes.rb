Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # read all tasks (index)
  get '/tasks', to: 'tasks#index'

  # create task (new + create)
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'

  # read task (show)
  get '/tasks/:id', to: 'tasks#show', as: :task

  # update task (edit + update)
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # delete task (destroy)
  # delete '/tasks/:id', to: 'tasks#destroy'
end
