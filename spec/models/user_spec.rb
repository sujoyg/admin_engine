require 'spec_helper'

describe Account, :type => :model do
  describe '#admin?' do
    let(:account) { FactoryGirl.create :account }

    it 'should be true if an admin entry for the account exists.' do
      FactoryGirl.create :admin, :account_id => account.id
      expect(account).to be_admin
    end

    it 'should be false if an admin entry for the account does not exist.' do
      expect(Admin.count).to be_zero
      expect(account).to_not be_admin
    end
  end
end