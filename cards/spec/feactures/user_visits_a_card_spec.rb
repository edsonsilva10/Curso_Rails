require "rails_helper"

feature "User visits a card" do
  scenario "successfully" do
    card = Card.create(front: "com sucesso", back:"successfully")
    visit card_path(card)
    expect(page).to have_content 'Pt: com sucesso -> En: successfully'
  end
end
