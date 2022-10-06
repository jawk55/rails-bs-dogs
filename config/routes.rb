Rails.application.routes.draw do
  resources :articles

  # root "pages#home"
  get '/' => 'pages#home'
  get 'pages/home'

  resources :notices # routes
  #painters/1/pictures/
  resources :painters do
    resources :pictures
  end

  get 'pictures/listar'
  get 'pictures/nuevo_radio'
  get 'pictures/nuevo_select'
  post 'pictures', to: 'pictures#create'

  devise_for :users

  resources :dogs

end
