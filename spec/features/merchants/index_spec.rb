require 'rails_helper'
#save_and_open_page

RSpec.describe "Merchant index page", type: :feature do
  it 'should list all merchants' do
    visit '/merchants'

    expect(page.all('.merchants').count).to eq(100)
  end
end
