class TodosController < ApplicationController
  before_action :authenticate

  def index
    @todos = Todo.all.by_email(current_email)
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create todos_params.merge(email: current_email)
    redirect_to todos_path
  end

  private

  def todos_params
    params.require(:todo).permit(:title)
  end
end
