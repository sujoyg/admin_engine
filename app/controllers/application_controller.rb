class ApplicationController < ActionController::Base
  private

  def authorize_admin
    unless current_user && current_user.admin?
      raise ActionController::RoutingError.new('Not Found')
    end
  end
end

