Rails.application.routes.draw do
  devise_for :users
  root  'words#index'
  get 'words/list' => 'words#list'
  resources :words , except: :show do
    collection do
      get 'search'
    end
  end

  resources :users , only: :show
  get 'words/ranking' => 'words#ranking'
  get 'quiz/quiz' => 'quiz#quiz'
  get 'quiz/question' => 'quiz#question'
  get 'quiz/answer' => 'quiz#answer'
  get 'quiz/result' => 'quiz#result'
end
