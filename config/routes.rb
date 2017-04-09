Rails.application.routes.draw do

  root 'home#index'

  get 'home/account'

  get 'home/login'

  post 'home/attempt_login'

  get 'home/contact'

  get 'home/logout'

  # get 'admin', :to => 'access#menu'
  # get 'access/menu'
  # get 'access/login'
  # post 'access/attempt_login'
  # get 'access/logout'

	resources :users do
		member do
			get :delete
		end
	end

  resources :photos do 
    member do 
      get :delete
    end
  end
  # get 'users/new'

  # get 'users/edit'

  # get 'users/deactivate'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
