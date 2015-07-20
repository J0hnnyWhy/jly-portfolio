Rails.application.routes.draw do

  devise_for :users
 root 'skills#index'

  resources :contact, :only => [:index]
  resources :about, :only => [:index, :show]
  resources :skills do
    resources :experiences, :except => [:index, :show]
  resources :projects, :only => [:index] do
    resources :github, :only => [:index]
    end
  end
end
