Rails.application.routes.draw do
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
  get 'caixa/index'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
