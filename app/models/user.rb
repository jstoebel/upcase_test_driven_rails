class User
  def initialize(email)
    @email = email
  end

  def todos
    Todo.by_email @email
  end

  def signed_in?
    @email.present?
  end
end
