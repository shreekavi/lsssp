Lsssp::Application.routes.draw do


  get "home/index"
  get "home/aboutus"
#==========================================
  match 'aboutus' => 'home#aboutus', :as =>:aboutus
  match 'contact' => 'home#contact', :as =>:contact
  match 'mission' => 'home#mission', :as =>:mission
#=================================================================================
#Certifications  
  get "certifications/index"  
  match 'certifications' => 'certifications#index', :as =>:certifications
#==============================================================================
#Registration
  get "register/index"
  get "register/login"
  match 'register' => 'register#index', :as => :register
  match 'login' => 'register#login', :as => :login
#===============================================================================  
  get "service_providers/index"
  get "service_providers/register"
  match 'service_providers' => 'service_providers#index', :as => :service_providers
#=======================================================================
#Super Admin

  get "superadmin/dashboard"
  get "superadmin/users"
  get "superadmin/profile"
  get "superadmin/roles"

  match 'superadmin/dashboard' => 'superadmin#dashboard', :as => :superadmin_dashboard_path

  match 'superadmin' => 'superadmin#dashboard', :as => :superadmin
  match 'superamdin/user' =>'users#index', :as => :superadmin_user
  match 'superadmin/profile' => 'superadmin#profile', :as => :superadmin_profile
  match 'superadmin/role' =>'roles#index', :as => :superadmin_role  
  


  get "admin/dashboard"
  get "admin/profile"
  get "admin/examinations"
  get "admin/users"
  get "admin/question_types"
  get "admin/subjects"
  get "admin/payments"
  get "admin/question_banks"
  get "admin/roles"

  match 'admin/dashboard' => 'admin#dashboard', :as =>:admin_dashboard_path
  
  match 'admin' => 'admin#dashboard', :as => :admin
  match 'admin/profile' => 'admin#profile', :as => :admin_profile
  match 'admin/user' => 'users#index', :as => :admin_user
  match 'admin/question_type' => 'question_types#index', :as => :admin_question_type
  match 'admin/subject' => 'subjects#index', :as => :admin_subject
  match 'admin/payment' => 'payments#index', :as => :admin_payment
  match 'admin/role' => 'roles#index', :as => :admin_role
  match 'admin/question_bank' => 'question_banks#index', :as => :admin_question_bank
  match 'admin/examination' => 'examinations#index', :as => :admin_examination

  get "student/home"
  get "student/certifications"
  get "student/assessors"
  get "student/profile"

  match 'student' => 'student#home', :as => :student
  match 'student/home' => 'student#home', :as => :student_home
  match 'student/certifications' => 'student#certifications', :as=> :student_certifications
  match 'student/assessors' => 'student#assessors', :as => :student_assessors
  match 'student/profile' => 'student#profile', :as => :student_profile

  get "tutor/home"
  match 'tutor' => 'tutor#home', :as => :tutor
    
  match 'assessor/home' => 'tutor#home', :as=> :assessor_home
  match 'assessor/students' => 'tutor#students', :as=> :assessor_students
  match 'assessor/projects' => 'tutor#projects', :as=> :assessor_projects
  match 'assessor/certification_queue' => 'tutor#certification_queue', :as=> :assessor_certification_queue
  match 'assessor/profile' => 'tutor#profile', :as=> :assessor_profile

  get "provider/dashboard"
  get "provider/profile"

  match 'serviceprovider' => 'provider#dashboard', :as => :serviceprovider

  match 'serviceprovider/dashboard' => 'provider#dashboard', :as => :provider_dashboard_path

   root :to => "home#index"

   match ':controller(/:action(/:id(.:format)))'
   
end

