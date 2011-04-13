Lsssp::Application.routes.draw do
  get "provider/dashboard"

  get "superadmin/dashboard"

  get "admin/dashboard"

  get "tutor/home"

  get "student/home"
  get "student/certifications"
  get "student/assessors"
  get "student/profile"

  get "register/index"
  get "register/login"

  get "certifications/index"
  get "service_providers/index"
  get "service_providers/register"

  get "home/index"
  get "home/aboutus"

  match 'aboutus' => 'home#aboutus', :as =>:aboutus
  match 'contact' => 'home#contact', :as =>:contact
  match 'mission' => 'home#mission', :as =>:mission
  match 'certifications' => 'certifications#index', :as =>:certifications
  match 'register' => 'register#index', :as => :register
  match 'login' => 'register#login', :as => :login
  match 'service_providers' => 'service_providers#index', :as => :service_providers

  match 'superadmin' => 'superadmin#dashboard', :as => :superadmin
  match 'admin' => 'admin#dashboard', :as => :admin
  match 'serviceprovider' => 'provider#dashboard', :as => :serviceprovider
  match 'tutor' => 'tutor#home', :as => :tutor
  match 'student' => 'student#home', :as => :student

  match 'student/home' => 'student#home', :as => :student_home
  match 'student/certifications' => 'student#certifications', :as=> :student_certifications
  match 'student/assessors' => 'student#assessors', :as => :student_assessors
  match 'student/profile' => 'student#profile', :as => :student_profile

  match 'assessor/home' => 'tutor#home', :as=> :assessor_home
  match 'assessor/students' => 'tutor#students', :as=> :assessor_students
  match 'assessor/projects' => 'tutor#projects', :as=> :assessor_projects
  match 'assessor/certification_queue' => 'tutor#certification_queue', :as=> :assessor_certification_queue
  match 'assessor/profile' => 'tutor#profile', :as=> :assessor_profile

  match 'serviceprovider/dashboard' => 'provider#dashboard', :as => :provider_dashboard_path

  match 'admin/dashboard' => 'admin#dashboard', :as =>:admin_dashboard_path

  match 'superadmin/dashboard' => 'superadmin#dashboard', :as => :superadmin_dashboard_path
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
  root :to => "home#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
   match ':controller(/:action(/:id(.:format)))'
end

