Rails.application.routes.draw do

  root 'home#index'

  get 'home/account'

  get 'home/login'

  get 'home/contact'

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
