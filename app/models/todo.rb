class Todo < ApplicationRecord
  scope :by_email, ->(email) { where(email: email) }
end
