require 'rails_helper'
#save_and_open_page

RSpec.describe "Merchant index page", type: :feature do
  it 'should list all merchants' do
    visit '/merchants'

    expect(page.all('.merchants').count).to eq(100)
  end

  it 'should list merchant names as links' do
    visit '/merchants'

    expect(page).to have_link("Dicki-Bednar")
  end

  it 'should have names as links to merchant show page' do
    visit '/merchants'

    click_link("Dicki-Bednar")

    expect(page).to have_current_path("/merchants/14")
  end
end
