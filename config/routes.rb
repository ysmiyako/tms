Rails.application.routes.draw do
  resources :users
  get 'ranking/top' => 'ranking#index'
  match 'ranking/movie(/:id)'  => 'ranking#show' , :via => :get, as: :movie
  get 'users/new/complete' => 'users#complete'
  
  
  get 'ranking/28' => 'ranking#show28'
  get 'ranking/29' => 'ranking#show29'
  get 'ranking/30' => 'ranking#show30'
  get 'ranking/01' => 'ranking#show01'
  get 'ranking/02' => 'ranking#show02'
  get 'ranking/03' => 'ranking#show03'
  get 'ranking/04' => 'ranking#show04'
  get 'ranking/05' => 'ranking#show05'
  
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
