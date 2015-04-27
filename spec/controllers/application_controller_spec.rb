require 'spec_helper'

describe ApplicationController, :type => :controller do
  describe '#authorize_admin' do
    it 'should not raise any error when the current account is an admin.' do
      account = FactoryGirl.create :account
      FactoryGirl.create :admin, :account_id => account.id
      expect(account).to be_admin

      allow(controller).to receive(:current_account).and_return account

      expect { controller.send(:authorize_admin) }.to_not raise_error
    end

    it 'should raise a routing error when the current is not an admin.' do
      account = FactoryGirl.create :account
      expect(account).to_not be_admin

      allow(controller).to receive(:current_account).and_return account

      expect { controller.send(:authorize_admin) }.to raise_error AbstractController::ActionNotFound
    end

    it 'should raise a routing error when there is no current account.' do
      allow(controller).to receive(:current_account).and_return nil

      expect { controller.send(:authorize_admin) }.to raise_error AbstractController::ActionNotFound
    end
  end
end