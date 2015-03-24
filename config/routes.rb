Hrad::Application.routes.draw do
    
  resources :scripts

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
    resources :piece11s, controller: 'pnameforms/piece11s'
    resources :piece12s, controller: 'pnameforms/piece12s'
    resources :piece13s, controller: 'pnameforms/piece13s'
    resources :piece14s, controller: 'pnameforms/piece14s'
    resources :piece15s, controller: 'pnameforms/piece15s'
    resources :piece16s, controller: 'pnameforms/piece16s'
    resources :piece17s, controller: 'pnameforms/piece17s'
    resources :piece18s, controller: 'pnameforms/piece18s'
    resources :piece19s, controller: 'pnameforms/piece19s'
    resources :piece20s, controller: 'pnameforms/piece20s'
    resources :piece21s, controller: 'pnameforms/piece21s'
    resources :piece22s, controller: 'pnameforms/piece22s'
    resources :piece23s, controller: 'pnameforms/piece23s'
    resources :piece24s, controller: 'pnameforms/piece24s'
    resources :piece25s, controller: 'pnameforms/piece25s'
  end     

  devise_for :users, :controllers => { :registrations => "registrations" }

  resources :seds do
    resources :plays, controller: 'seds/plays'
  end 
  
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
