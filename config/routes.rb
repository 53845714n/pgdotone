Rails.application.routes.draw do
  #resources :pages
  get '/proyectos-ficha' => 'pages#proyectos_ficha', as: 'proyectos_ficha'
  get '/modelos-ficha'   => 'pages#modelos_ficha',   as: 'modelos_ficha'
  get '/proyectos'       => 'pages#proyectos'
  get '/contacto'        => 'pages#contacto'
  root 'pages#index'
end
