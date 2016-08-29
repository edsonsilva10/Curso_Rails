require "rails_helper"

feature "User creates a card" do

  scenario "successfully" do
    visit new_card_path
    fill_in "Frente", with: "Teste"
    fill_in "Verso",  with: "Test"
    fill_in "Autor",  with: "Edson"
    click_on "Enviar"
    expect(page).to have_content "Pt: Teste -> En: Test"
    expect(page).to have_content "Enviado por: Edson"
  end

  scenario "un successfully Create Frente" do

    visit new_card_path

    click_on "Enviar"

  expect(page).to have_content "Faltou digitar o campo Frente :("
  end

end
