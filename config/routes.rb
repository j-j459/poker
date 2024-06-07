Rails.application.routes.draw do
  devise_for :users
  get 'chases/top' => 'chases#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show] # ユーザーマイページへのルーティング
  #ここまで

  resources :chases  do
    resources :comments, only: [:create]
  end
  
  
  resources :relationships, only: [:create, :destroy]
  root 'chases#top'

end