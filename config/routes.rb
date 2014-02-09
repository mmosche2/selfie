Selfie::Application.routes.draw do

  devise_for :users

  resources :users do
    resources :photos
  end



  root :to => "pages#index"


end
