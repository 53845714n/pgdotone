Rails.application.routes.draw do

  resources :pages
  resources :banners
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

  get '/servicio-cliente' => 'pages#servicio_cliente', as: 'servicio_cliente'
  get '/proceso-compra'   => 'pages#proceso_compra',   as: 'proceso_compra'
  get '/proyectos-ficha'  => 'pages#proyectos_ficha',  as: 'proyectos_ficha'
  get '/modelos-ficha'    => 'pages#modelos_ficha',    as: 'modelos_ficha'
  get '/quienes-somos'    => 'pages#quienes_somos',    as: 'quienes_somos'
  get '/financiamiento'   => 'pages#financiamiento'
  get '/proyectos'        => 'pages#proyectos'
  get '/contacto'         => 'pages#contacto'
  get '/admin'            => 'admin#index'

  root 'pages#index'
end
