class ApplicationController < ActionController::Base
  protect_from_forgery

  # This is required so that skip_before_filter in admin controller can be tested to be effective.
  before_filter :authorize
end
