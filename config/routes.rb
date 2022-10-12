Rails.application.routes.draw do
  get '/' => 'movies#index'
  # root "movies#index"





























  get     'movies', to: 'movies#index', as: 'movies'
  get     'movies/new', to: 'movies#new', as: 'new_movie'
  get     'movies/:id', to: 'movies#show', as: 'movie'
  get     'movies/:id/:edit', to: 'movies#edit', as: 'edit_movie'
  post    'movies', to: 'movies#create'
  patch   'movies/:id', to: 'movies#update'
  put     'movies/:id', to: 'movies#update'
  delete  'movies/:id', to: 'movies#destroy'















  resources :articles

  # get 'pages/home'

  devise_for :users
  #painters/1/pictures/
  resources :painters do
    resources :pictures
  end

  get 'pictures/listar'
  get 'pictures/nuevo_radio'
  get 'pictures/nuevo_select'
  post 'pictures', to: 'pictures#create'

  resources :dogs
  resources :notices # routes

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

end
