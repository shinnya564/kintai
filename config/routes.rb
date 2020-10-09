Rails.application.routes.draw do
	root 'stanps#top'
	resource :stanps, only: [:index, :create, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
