class ApplicationController < ActionController::Base
  private

  def authorize_admin
    unless current_user && current_user.admin?
      raise AbstractController::ActionNotFound
    end
  end
end

