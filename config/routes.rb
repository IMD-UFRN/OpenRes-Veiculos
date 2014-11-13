Rails.application.routes.draw do
  devise_for :users
  resources :vehicle_reservations
  resources :vehicles
  resources :drivers

  get '/vehicles/:id/reservations', to: 'vehicles#get_reservations', as: :get_vehicle_reservations

  root "vehicle_reservations#index"

  post "vehicle_reservations/:id/approve", to: "vehicle_reservation_approval#approve", as: :vehicle_reservation_approve
  get "vehicle_reservations/:id/reject" => 'vehicle_reservation_approval#justify_status', as: :justify_reject
  get "vehicle_reservations/:id/suspend" => 'vehicle_reservation_approval#justify_status', as: :justify_suspend

  post "vehicle_reservations/:id/reject", to: "vehicle_reservation_approval#reject", as: :vehicle_reservation_reject
  post "vehicle_reservations/:id/suspend", to: "vehicle_reservation_approval#suspend", as: :vehicle_reservation_suspend



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
