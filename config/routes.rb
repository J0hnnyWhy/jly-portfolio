Rails.application.routes.draw do

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
 root 'skills#index'

  resources :contact, :only => [:index]
  resources :about, :only => [:index, :show]
  resources :skills do
    resources :experiences, :except => [:index]
  resources :projects, :only => [:index] do
    resources :github, :only => [:index]
    end
  end
end
