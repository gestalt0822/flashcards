Rails.application.routes.draw do
  devise_for :users
  resources :words do
    collection do
      get 'search'
    end
  end
  get 'users/:id' => 'users#show'
  get 'words/ranking' => 'words#ranking'
  get 'quiz/quiz' => 'quiz#quiz'
  get 'quiz/question' => 'quiz#question'
  get 'quiz/answer' => 'quiz#answer'
  get 'quiz/result' => 'quiz#result'
end
