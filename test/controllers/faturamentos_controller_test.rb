require "test_helper"

class FaturamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faturamento = faturamentos(:one)
  end

  test "should get index" do
    get faturamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_faturamento_url
    assert_response :success
  end

  test "should create faturamento" do
    assert_difference('Faturamento.count') do
      post faturamentos_url, params: { faturamento: { descricao: @faturamento.descricao, nome: @faturamento.nome, valor: @faturamento.valor } }
    end

    assert_redirected_to faturamento_url(Faturamento.last)
  end

  test "should show faturamento" do
    get faturamento_url(@faturamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_faturamento_url(@faturamento)
    assert_response :success
  end

  test "should update faturamento" do
    patch faturamento_url(@faturamento), params: { faturamento: { descricao: @faturamento.descricao, nome: @faturamento.nome, valor: @faturamento.valor } }
    assert_redirected_to faturamento_url(@faturamento)
  end

  test "should destroy faturamento" do
    assert_difference('Faturamento.count', -1) do
      delete faturamento_url(@faturamento)
    end

    assert_redirected_to faturamentos_url
  end
end
