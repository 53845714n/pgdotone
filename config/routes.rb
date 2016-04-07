Rails.application.routes.draw do
  #resources :pages
  get '/servicio-cliente' => 'pages#servicio_cliente', as: 'servicio_cliente'
  get '/proceso-compra'   => 'pages#proceso_compra',   as: 'proceso_compra'
  get '/proyectos-ficha'  => 'pages#proyectos_ficha',  as: 'proyectos_ficha'
  get '/modelos-ficha'    => 'pages#modelos_ficha',    as: 'modelos_ficha'
  get '/quienes-somos'    => 'pages#quienes_somos',    as: 'quienes_somos'
  get '/financiamiento'   => 'pages#financiamiento'
  get '/proyectos'        => 'pages#proyectos'
  get '/contacto'         => 'pages#contacto'
  root 'pages#index'
end
