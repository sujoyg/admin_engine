class ApplicationController < ActionController::Base
  private

  def authorize_admin
    unless current_account && current_account.admin?
      raise AbstractController::ActionNotFound
    end
  end
end

