TuFuturoUniversitario::Application.routes.draw do
  resources :schools
  get 'schools/page/:page', :controller => :schools, :action => "more_schools"

  devise_for :users

  resources :congresses do
    member do
      get 'applications'
    end
  end
  resources :applications
  resources :users do
    member do
      get 'congresses'
    end
  end

  match 'pictures' => 'pictures#create', :via => :post
  match 'areas' => 'areas#index'

  root :to => "congresses#index"
end
