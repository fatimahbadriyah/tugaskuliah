Rails.application.routes.draw do
	get '/admin', to: 'admin#dashboard'
	get '/admin/data-admin', to:'admin#dataAdmin'
	get '/admin/data-member', to:'admin#dataMember'
	get '/admin/data-event', to:'admin#dataEvent'
	get '/admin/data-visitor', to:'admin#dataVisitor'
	get '/members', to: 'members#index'

	resources :members 
	resources :events
end
