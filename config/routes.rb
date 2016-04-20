Rails.application.routes.draw do
  root 'sessions#new'

  get 'login' => 'sessions#new'

  get 'signup'  => 'users#new'

  resources :users

  get 'grades' => 'grades#index'       # only for teachers?         but only when logged in and only for a given student
  get 'grades/new' => 'grades#new'     # but only for teachers logged in
  get 'student/:id' => 'grades#show' #, as: :grades  # for anyone logged in but only for parents & students only for the single student
  post 'grades' => 'grades#create'     # only for logged in teachers
  post 'login' => 'sessions#create'    # takes the data submitted through the form and logs the user in by starting a new session
  delete 'logout' => 'sessions#destroy'
  get 'grades/edit' => 'grades#edit'



  get 'parents/view_student_grades'

  get 'students/view_grades'

  get 'teachers/new'

  get 'teachers/show'

  get 'teachers/edit'

  get 'teachers/update'

  get 'teachers/create'

  get 'teachers/delete'

  get 'teachers/add_student'

  get 'teachers/add_parent'

  get 'teachers/add_grade'


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
