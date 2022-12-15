class HomeController < ApplicationController
  def index
    @faturamentos = Faturamento.sum(:valor)
    @despesas = Despesa.sum(:valor)
    @pedidos = Pedido.sum(:valor_total)
  end
end
