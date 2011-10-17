TuFuturoUniversitario::Application.routes.draw do

  devise_for :users

  resources :congresses do
    member do
      get 'applications'
    end
  end
  resources :applications
  resources :users

  match 'pictures' => 'pictures#create', :via => :post
  match 'areas' => 'areas#index'

  root :to => "congresses#index"
end
