Rails.application.routes.draw do
  root to: "memos#index"
  resources :memos, only: [:index, :new, :create, :destroy] 
end
