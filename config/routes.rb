Rails.application.routes.draw do

  get 'tops/index'

  resources :tweets do
    collection do
      post :confirm
    end
  end
  
  root to: 'tops#index'
  
end
