Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :side_quests do
    resources :reviews, only: %i[index new create]
  end
  resources :trips
end
