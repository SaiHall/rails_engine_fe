require 'rails_helper'
#save_and_open_page

RSpec.describe "Merchant show page", type: :feature do
  it 'should list all a merchants items' do
    visit '/merchants/99'

    expect(page.all('.items').count).to eq(42)
  end

  it 'should list the items by name' do
    visit '/merchants/99'

    expect(page).to have_content("Item Est Non")
  end
end
