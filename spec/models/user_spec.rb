require 'spec_helper'

describe User do
  describe '#admin?' do
    let(:user) { create :user }

    it 'should be true if an admin entry for the user exists.' do
      create :admin, :user_id => user.id
      user.should be_admin
    end

    it 'should be false if an admin entry for the user does not exist.' do
      Admin.count.should be_zero
      user.should_not be_admin
    end
  end
end