Rails.application.routes.draw do
  resources :painters do
    resources :pictures
  end

  #get 'pictures/listar'
  #get 'pictures/nuevo_radio'
  #get 'pictures/nuevo_select'
  #post 'pictures', to: 'pictures#create'

  resources :notices
  get 'pages/home'
  devise_for :users
  resources :dogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "painters#index"
end
