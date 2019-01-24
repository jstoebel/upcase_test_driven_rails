module Features
  def create_todo(name)
    click_on 'Add a new todo'
    fill_in 'Title', with: name
    click_on 'Submit'
  end

  def have_todo(title)
    have_css('.todos li', text: title)
  end

  def have_completed_todo(title)
    have_css('.todos li.completed', text: title)
  end
end
