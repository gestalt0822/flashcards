Rails.application.routes.draw do
  devise_for :users
  root  'words#index'
  get 'words' => 'words#index'
  get 'words/new' => 'words#new'
  post 'words' => 'words#create'
  delete 'words/:id' => 'words#destroy'
  get 'words/:id/edit' => 'words#edit'
  patch 'words/:id' => 'words#update'
  get 'words/list' => 'words#list'
  get 'users/:id' => 'users#show'
  get 'words/ranking' => 'words#ranking'
  get 'quiz/quiz' => 'quiz#quiz'
  get 'quiz/question' => 'quiz#question'
  get 'quiz/answer' => 'quiz#answer'
  get 'quiz/result' => 'quiz#result'
end
