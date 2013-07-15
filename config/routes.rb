Idv::Application.routes.draw do
  get "suscribers/create"

  get "suscribers/new"

  get "suscribers/destroy"
  
  resources :suscribers
  
  resources :suscripts

  resources :special_requests

  resources :incert_videos

  resources :photos

  resources :docuent_files

  devise_for :users
  
  get "admin/gallery"
  
  get "admin/documents"
  
  get "admin/users"

  get "home/index"

  get "home/services"

  get "home/video"

  get "home/hymnal"
  
  get "home/revista", :as => :revista
  
  get "home/curso", :as => :curso
  
  
  get "home/web_data"
  
  get "home/members"
  root :to => 'home#index'
  
  #match routes with inteface
  
  devise_for :users do
    get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
  end
  
  match '/videos', :to => 'home#video', :at => :video
  
  match '/videos/mexico',:to => 'home#video_mexico', :as => :video_mexico
  match '/videos/colombia',:to => 'home#video_colombian', :as => :video_colombian
  match '/videos/perto_rico',:to => 'home#video_puerto_rico', :as => :video_puerto_rico
  
  match '/hymnal', :to => 'home#hymnal',:at => :music 
  
  match '/religious_service/mexico',:to =>  'home#services', :at => :religious_service_mexico 
  match '/religious_service/colombian', :to => 'home#colombian_services', :as => :reiligius_service_colombian
  match '/religious_service/puerto_rico', :to => 'home#puerto_rico_services', :as => :reiligius_service_puerto_rico
  
  
  match '/develop', :to => 'home#web_data'
  
  
  ## suscritp linalit
  get '/suscript/express', :to => 'suscripts#express', :as => :suscript_express
  

  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
