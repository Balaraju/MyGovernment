Rails.application.routes.draw do


  resources :categories do
    collection do
      post 'create_category'
      post 'update_category'
      get 'state_data'
      get 'district_data'
    end
  end

  resources :department do
    collection do
      post 'create_department'
      post 'update_department'
      get 'total_departments'
      get 'total_services'
      get 'place_data'
    end
  end


  resources :users do 
    collection do
      post "sign_in"
      post "sign_out"
    end
  end

  resources :services

  resources :service_categories, only: :show

  match "/departments_list" => "department#department_list", via: [:get]

  match "/search_services" => "search#search_services", via: [:get]

  match '/categories_list' => "categories#categories_list", via: [:get] 

  match '/services_list' => "services#services_list", via: [:get]

   mount Soulmate::Server, :at => "/autocomplete"


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
