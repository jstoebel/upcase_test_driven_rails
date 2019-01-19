require 'rails_helper'

feature 'user creates todo' do
  scenario 'successfully' do
    visit root_path
    click_on 'Add a new todo'

    fill_in 'Title', with: 'My Todo'
    click_on 'Submit'

    puts page.body
    expect(page).to have_css('.todos li', text: 'My Todo')
  end
end
