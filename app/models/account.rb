class Account < ActiveRecord::Base
  def admin?
    Admin.exists? :account_id => self
  end
end