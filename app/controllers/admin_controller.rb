class AdminController < ApplicationController
  skip_before_filter :authorize, :only => [:home]

  def home
  end
end
