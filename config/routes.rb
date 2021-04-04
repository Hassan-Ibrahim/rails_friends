Rails.application.routes.draw do


	
    resources :posts
    devise_for :users
    resources :friens

	get 'home/about'
	root 'posts#index'

#get 'home/inder'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
