Rails.application.routes.draw do



  get 'service/index'

  mount Ckeditor::Engine => '/ckeditor'

  resources :view_pictures
  resources :orientation_pictures
  resources :plane_pictures
  resources :department_models
  resources :department_models
  resources :project_pictures
  resources :projects
  resources :articles
  resources :subcategories
  resources :categories
  resources :contacts
  resources :pages

  resources :offers do
    member do
      get :flop
      get :up_order
      get :down_order
    end
  end

  resources :banners do
    member do
      get :flop
      get :up_order
      get :down_order
    end
  end
  # Use flop as a member of questions resources
  resources :questions do
    member do
      get :flop
      get :up_order
      get :down_order
    end
  end

  # Use resources to override Devise default behavior
  resources :users do
    member do
      get :flop
    end
  end

  # Create Devise routes for users, but skipping the sessions views
  devise_for :users, :skip => [:sessions]

  devise_scope :user do
    get 'login'               => 'devise/sessions#new',          :as     => :new_user_session
    post 'login'              => 'devise/sessions#create',       :as     => :user_session
    delete 'logout'           => 'devise/sessions#destroy',      :method => :delete
    delete 'users/:id/delete' => 'devise/registrations#destroy', :as     => :delete_user 
  end

  get '/servicio-cliente'  => 'service#index'
  #get '/servicio-cliente' => 'pages#servicio_cliente', as: 'servicio_cliente'
  get '/proceso-compra'   => 'pages#proceso_compra',   as: 'proceso_compra'
  get '/proyectos-ficha'  => 'pages#proyectos_ficha',  as: 'proyectos_ficha'
  get '/modelos-ficha'    => 'pages#modelos_ficha',    as: 'modelos_ficha'
  get '/quienes-somos'    => 'pages#quienes_somos',    as: 'quienes_somos'
  get '/financiamiento'   => 'pages#financiamiento'
  get '/proyectos'        => 'pages#proyectos'
  get '/contacto'         => 'contacts#new'
  get '/admin'            => 'admin#index'

  get '/modelos/edificio-toscana'         => 'pages#edificio_toscana',         as: 'toscana'
  get '/modelos/edificio-piamonte'        => 'pages#edificio_piamonte',        as: 'piamonte'
  get '/modelos/parque-condominio-ligure' => 'pages#parque_condominio_ligure', as: 'ligure'
  get '/modelos/edificio-montecastello'   => 'pages#edificio_montecastello',   as: 'montecastello'

  get 'service/update_subcategories', as: 'update_subcategories'
  get 'service/show'
  get '/update_subcategories' => 'service#update_subcategories'

  root 'pages#index'
end