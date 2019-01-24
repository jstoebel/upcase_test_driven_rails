require 'rails_helper'

feature 'user creates todo' do
  scenario 'successfully' do
    sign_in
    create_todo 'My Todo'
    expect(page).to have_todo 'My Todo'
  end
end
