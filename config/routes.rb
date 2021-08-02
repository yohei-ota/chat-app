Rails.application.routes.draw do
  devise_for :users
  # get 'messages/index' ←知らん間にできてたやつ
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "messages#index"
  resources :users, only: [:edit, :update]
end
