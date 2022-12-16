Rails.application.routes.draw do
  get 'admin/index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :faturamentos
  
  resources :despesas
  resources :pedidos do
    resources :pedido_produtos
  end
  resources :pedidos
  resources :fornecedors
  resources :produtos
  resources :clientes
  root 'home#index'
  get 'home/index'
  get 'caixa/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
