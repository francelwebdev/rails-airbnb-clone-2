Rails.application.routes.draw do
  root to: 'treehouses#index'
  
  devise_for :users,
  	controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } 




  resources :treehouses, only: [:index, :show, :new, :create, :edit, :update, :destroy], :path => "/"


  mount Attachinary::Engine => "/attachinary"
end

