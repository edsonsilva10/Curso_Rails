require "rails_helper"

feature 'User comments a card' do
 scenario "successfully" do
 card = Card.create(front:"Livro",back:"Book", author:"Edson")

 visit card_path(card)

 fill_in "Autor",  with: "Edson"
 fill_in "Comentario", with: "Este card me ajudou"
 click_on "Enviar"


 expect(page).to have_content "Pt: Livro -> En: Book"
 expect(page).to have_content "Edson Comentario "
 expect(page).to have_content "Este card me ajudou"
 end

end
