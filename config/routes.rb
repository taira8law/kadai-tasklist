Rails.application.routes.draw do
  # ここで参照先がtasksになるのはmodelを設定した時に自動的に設定されているということかな
  root to: 'tasks#index'
  
  resources :tasks
end
