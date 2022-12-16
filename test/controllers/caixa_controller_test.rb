require "test_helper"

class CaixaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get caixa_index_url
    assert_response :success
  end
end
