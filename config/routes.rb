Rails.application.routes.draw do
  devise_for :workers
  devise_for :employers
  resources :workers
  resources :employers

  get '/employers/:id/projects/:project_id/tasks' => 'employers#show_tasks'
  get '/employers/:id/projects/:project_id' => 'employers#show_project'
  get '/employers/:id/projects' => 'employers#my_projects'
  get '/employers/:id/workers' => 'employers#my_workers'
  
  post '/employers/:id/projects/:project_id/create-task' => 'employers#add_task'
  post '/employers/:id/create-worker' => 'employers#new_worker'
  post '/employers/:id/create-project' => 'employers#new_project'

  patch '/employers/:id/projects/:project_id/tasks/:task_id' => 'employers#edit_task'
  patch '/employers/:id/projects/:project_id' => 'employers#edit_project'

  # delete works just highlights differently for no reason
  delete '/employers/:id/projects/:project_id' => 'employers#delete_project'
  delete '/employers/:id/workers/:worker_id' => 'employers#remove_worker'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end