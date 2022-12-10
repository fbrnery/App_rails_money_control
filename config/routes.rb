Rails.application.routes.draw do
  resources :pedido_produtos
  resources :pedidos
  resources :receita
  resources :despesas
  resources :fornecedors
  resources :produtos
  resources :clientes
  root 'home#index'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
