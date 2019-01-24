require 'rails_helper'

feature 'user marks todo incomplete' do
  scenario 'successfully' do
    sign_in
    create_todo 'My Todo'
    click_on 'Mark complete'
    click_on 'Mark incomplete'
    expect(page).to have_todo 'My Todo'
  end
end
