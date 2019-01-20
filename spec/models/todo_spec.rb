require 'rails_helper'

describe Todo do

  describe 'by_email scope' do
    it 'scopes by email' do
      email = 'someone@example.com'
      expect(Todo).to receive(:where).with(email: email)
      Todo.by_email(email)
    end
  end

end