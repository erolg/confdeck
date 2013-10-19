Confman::Application.routes.draw do
  resources :topics
  resources :rooms
  resources :slots
  resources :topics
  resources :speakers

  get "invitations/accept"

  resources :conferences do
    resources :sponsors
    resources :appeals
    member do
     get 'schedule'
    end
  end

  resources :organizations do
    member do
      post 'invite'
    end
  end

  get "invitations/accept", as: :accept_invitation

  get "home/index"

  devise_for :users

  root :to => 'home#index'

end
