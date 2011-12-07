TuFuturoUniversitario::Application.routes.draw do
  resources :scholarships

  resources :schools
  get 'schools/page/:page', :controller => :schools, :action => "more_schools"

  devise_for :users
 
  resources :congresses do
    member do
      get 'applications'
    end
  end
  resources :applications do
  		member do
			post 'rate'
		end
  	end
  resources :users do
    member do
      get 'congresses'
    end
  end

  match 'pictures' => 'pictures#create', :via => :post
  match 'areas' => 'areas#index'
  match 'about' => 'main#about'

  match 'contacto' => 'main#new', :as => 'contact', :via => :get
  match 'contacto' => 'main#create', :as => 'contact', :via => :post

  root :to => "congresses#index"
end
