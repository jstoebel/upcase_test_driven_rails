module TodoHelper
  # displays either a Mark Complete or Mark Incomplete button depending on todo state
  def todo_action_button(todo)
    todo.completed? ? mark_incomplete_button(todo) : mark_complete_button(todo)
  end

  def mark_complete_button(todo)
    button_to 'Mark complete', todo_completion_path(todo)
  end

  def mark_incomplete_button(todo)
    button_to 'Mark incomplete', todo_completion_path(todo), method: :delete
  end
end
