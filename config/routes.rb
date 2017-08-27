Rails.application.routes.draw do
  root 'questions#index'
  devise_for :users
  resources :questions do
   resources :comments
  end
  resources :users do
    resources :likes
  end

  get 'users/:id/followers', to: 'users#follower'

end
