class SessionsController < ApplicationController
  def new
  end

  def create
    sign_in_user params[:session][:email]
    redirect_to root_path
  end
end
