Rails.application.routes.draw do
  resources :avatar_atractivos
  resources :subtipos
  resources :tipos
  resources :categs
  resources :parrs
  resources :cants
  resources :provs
  resources :atractivos do
    collection do
      get 'add_cantones', to: 'atractivos#add_cantones'
      get 'add_parroquias', to: 'atractivos#add_parroquias'
      get 'add_tipos', to: 'atractivos#add_tipos'
      get 'add_subtipos', to: 'atractivos#add_subtipos'
      get 'add_climate_data', to: 'atractivos#add_climate_data'
    end
  end
  resources :cuestionarios do
    collection do
      get 'nextstep', to: 'cuestionarios#nextstep'
      post 'savestep', to: 'cuestionarios#savestep'
    end
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'atractivos#index'

  match 'atract/popup/:id' => 'atractivos#popup', :via => :get

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
