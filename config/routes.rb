Hrad::Application.routes.draw do
  
  resources :pnameforms do
    resources :piece1s, controller: 'pnameforms/piece1s'
    resources :piece2s, controller: 'pnameforms/piece2s'
    resources :piece3s, controller: 'pnameforms/piece3s'
    resources :piece4s, controller: 'pnameforms/piece4s'
    resources :piece5s, controller: 'pnameforms/piece5s'
    resources :piece6s, controller: 'pnameforms/piece6s'
    resources :piece7s, controller: 'pnameforms/piece7s'
    resources :piece8s, controller: 'pnameforms/piece8s'
    resources :piece9s, controller: 'pnameforms/piece9s'
    resources :piece10s, controller: 'pnameforms/piece10s'
  end     

  devise_for :users, :controllers => { :registrations => "registrations" }
  
  root 'pages#home'

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
