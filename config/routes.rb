Rails.application.routes.draw do

  resources :tweets do
    collection do
      post :confirm
    end
    
    collection do
      get :top
    end
  end
  
end
