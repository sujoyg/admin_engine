class AdminController < ApplicationController
  skip_before_filter :authorize
  before_filter :authorize_admin

  def home
  end
end
