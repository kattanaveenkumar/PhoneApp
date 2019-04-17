Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/index'
  post 'contacts/create'
  get 'contacts/edit'
  patch 'contacts/update'
  root to: 'home#index'
  get 'search', to: "contacts#search"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'contacts/new', to: "home#new"
  post 'contacts/create', to: "home#create"
end
