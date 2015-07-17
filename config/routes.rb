Rails.application.routes.draw do

 root 'skills#index'

  resources :skills do
    resources :experiences, :except => [:show, :index] 

    
  end

end
