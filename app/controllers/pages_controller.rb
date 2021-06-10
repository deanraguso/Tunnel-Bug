class PagesController < ApplicationController
  before_action :unauthorized_redirect, only: [:dashboard]

  def index
  end

  def dashboard
  end

  private
  def unauthorized_redirect
    unless current_user
      redirect_to root_path, notice: "You must be logged in to access projects!"
    end
  end

end
