require 'rails_helper'

describe 'TodoHelper' do
  describe '#todo_action_button' do
    it 'renders mark_complete_button when incomplete' do
      todo = instance_double(Todo, completed?: false)
      expect(helper).to receive(:mark_complete_button).with(todo)
      helper.todo_action_button todo
    end

    it 'renders mark_incomplete_button when complete' do
      todo = instance_double(Todo, completed?: true)
      expect(helper).to receive(:mark_incomplete_button).with(todo)
      helper.todo_action_button todo
    end
  end

  describe '#mark_complete_button' do
    it 'renders the button' do
      todo = Todo.new title: 'my todo', id: 1
      result = helper.mark_complete_button todo
      expect(result).to eq('<form class="button_to" method="post" action="/todos/1/completion"><input type="submit" value="Mark complete" /></form>')
    end
  end

  describe '#mark_incomplete_button' do
    it 'renders the button' do
      todo = Todo.new title: 'my todo', id: 1
      result = helper.mark_complete_button todo
      expect(result).to eq('<form class="button_to" method="post" action="/todos/1/completion"><input type="submit" value="Mark complete" /></form>')
    end
  end
end
