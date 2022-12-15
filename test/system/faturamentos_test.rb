require "application_system_test_case"

class FaturamentosTest < ApplicationSystemTestCase
  setup do
    @faturamento = faturamentos(:one)
  end

  test "visiting the index" do
    visit faturamentos_url
    assert_selector "h1", text: "Faturamentos"
  end

  test "creating a Faturamento" do
    visit faturamentos_url
    click_on "New Faturamento"

    fill_in "Descricao", with: @faturamento.descricao
    fill_in "Nome", with: @faturamento.nome
    fill_in "Valor", with: @faturamento.valor
    click_on "Create Faturamento"

    assert_text "Faturamento was successfully created"
    click_on "Back"
  end

  test "updating a Faturamento" do
    visit faturamentos_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @faturamento.descricao
    fill_in "Nome", with: @faturamento.nome
    fill_in "Valor", with: @faturamento.valor
    click_on "Update Faturamento"

    assert_text "Faturamento was successfully updated"
    click_on "Back"
  end

  test "destroying a Faturamento" do
    visit faturamentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Faturamento was successfully destroyed"
  end
end
