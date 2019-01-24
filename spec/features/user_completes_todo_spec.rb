require 'rails_helper'

feature 'user completes todo' do
  scenario 'successfully' do
    sign_in

    create_todo 'My Todo'

    click_on 'Mark complete'

    expect(page).to have_completed_todo 'My Todo'
  end
end
