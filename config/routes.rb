Rails.application.routes.draw do

 root 'skills#index'


  resources :abouts, :only => [:index, :show] 
  resources :skills do
    resources :experiences, :except => [:index, :show]
  resources :projects, :only => [:index] do
    resources :github, :only => [:index]          
    end
  end
end
