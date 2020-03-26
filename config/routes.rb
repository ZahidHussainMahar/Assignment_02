Rails.application.routes.draw do

	root 'employees#index'

	get '/employees' => 'employees#index'
	post '/employees' => 'employees#create'
	get '/employees/new' => 'employees#new', as: 'new_employee'
	get '/employees/:id' => 'employees#show', as: 'employee'
	get '/employees/:id/edit' => 'employees#edit', as: 'edit_employee' 

	

  #get 'employees/index'
  #get 'employees/show'
  #get 'employees/new'
  #get 'employees/create'
  #get 'employees/edit'
  #get 'employees/update'
  #get 'employees/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
