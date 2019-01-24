require 'rails_helper'

describe Todo do

  describe 'by_email scope' do
    it 'scopes by email' do
      email = 'someone@example.com'
      expect(Todo).to receive(:where).with(email: email)
      Todo.by_email(email)
    end
  end

  describe '#completed?' do
    it 'returns true if completed at is set' do
      todo = Todo.new completed_at: Time.current
      expect(todo).to be_completed
    end
    it 'returns false if completed at is nil' do
      todo = Todo.new completed_at: nil
      expect(todo).to_not be_completed
    end
  end

  describe '#complete!' do
    it 'updates completed_at' do
      todo = Todo.create! completed_at: nil
      todo.complete!
      todo.reload
      expect(todo).to be_completed
    end
  end

  describe '#mark_incomplete!' do
    it 'marks todo incomplete' do
      todo = Todo.create! completed_at: Time.current
      todo.mark_incomplete!
      todo.reload
      expect(todo).not_to be_completed
    end
  end
end
