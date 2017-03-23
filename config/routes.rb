Rails.application.routes.draw do

	resources :users do
		member do
			get :delete
		end
	end
  # get 'users/new'

  # get 'users/edit'

  # get 'users/deactivate'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
