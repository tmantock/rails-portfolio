Rails.application.routes.draw do
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :applications, except: [:show]

  get 'application/:id', to: 'applications#show', as: 'application_show'
  resources :blogs

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
