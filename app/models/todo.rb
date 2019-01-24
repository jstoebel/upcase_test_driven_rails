class Todo < ApplicationRecord
  scope :by_email, ->(email) { where(email: email) }

  def completed?
    completed_at?
  end

  def complete!
    touch :completed_at
  end
end
