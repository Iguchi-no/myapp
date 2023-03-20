Rails.application.routes.draw do
  resources :schedules
  
  get 'owners/top'

  devise_for :employees

  devise_for :owners, controllers: {
    sessions: 'owners/sessions',
    passwords: 'owners/passwords',
    registrations: 'owners/registrations'
  }
  
  get 'welcome/index'

  root 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
