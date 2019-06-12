Rails.application.routes.draw do
  devise_for :landlords

  resources :landlords do
  	resources :properties do
  		resources :tenants
  	end
  end

  get '/' => 'static#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
