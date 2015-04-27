require 'spec_helper'

describe User, :type => :model do
  describe '#admin?' do
    let(:user) { FactoryGirl.create :user }

    it 'should be true if an admin entry for the user exists.' do
      FactoryGirl.create :admin, :user_id => user.id
      expect(user).to be_admin
    end

    it 'should be false if an admin entry for the user does not exist.' do
      expect(Admin.count).to be_zero
      expect(user).to_not be_admin
    end
  end
end