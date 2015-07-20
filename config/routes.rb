Rails.application.routes.draw do

  devise_for :users
 root 'skills#index'


  resources :abouts, :only => [:index, :show]
  resources :skills do
    resources :experiences, :except => [:index, :show]
  resources :projects, :only => [:index] do
    resources :github, :only => [:index]
    end
  end
end
