Rails.application.routes.draw do
  resources :treehouses, only: [:index, :show, :new, :create], :path => "/"

  devise_for :users
  root to: 'treehouses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"
end
