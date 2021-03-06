Rails.application.routes.draw do

  root "homepage#index"

  namespace :api do
    resources :images, only: [:index] do
    end
  end

  namespace :userapi do
    resources :profiles, only: [:index] do
    end
  end

    post 'api/reactions'


  resources :reactions, only: [:create] do

  end

  resources :likes, only: [:create] do

  end

  resources :users, only: [:new, :create] do

  end

  resources :sessions, only: [:new, :create, :destroy] do

  end


  resources :images, only: [:new, :create] do

  end

  resources :profiles, only: [:show]

end
