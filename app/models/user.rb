class User < ActiveRecord::Base
  def admin?
    Admin.exists? :user_id => self
  end
end