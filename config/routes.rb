Rails.application.routes.draw do
  resources :bookings, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
  	member do
  		post 'confirm'
  	end
  end
  
  root to: 'treehouses#index'
  
  devise_for :users,
  	controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } 


  get '/mytrees', to: "treehouses#mytrees"
  get '/search', to: "treehouses#search"
  resources :treehouses, only: [:index, :show, :new, :create, :edit, :update, :destroy], :path => "/"



  mount Attachinary::Engine => "/attachinary"
end

