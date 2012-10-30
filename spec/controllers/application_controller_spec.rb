require 'spec_helper'

describe ApplicationController, :type => :controller do
  describe '#authorize_admin' do
    it 'should not raise any error when the current user is an admin.' do
      user = create :user
      create :admin, :user_id => user
      user.should be_admin

      controller.stub!(:current_user).and_return user

      expect { controller.send(:authorize_admin) }.to_not raise_error
    end

    it 'should raise a routing error when the current is not an admin.' do
      user = create :user
      user.should_not be_admin

      controller.stub!(:current_user).and_return user

      expect { controller.send(:authorize_admin) }.to raise_error AbstractController::ActionNotFound
    end

    it 'should raise a routing error when there is no current user.' do
      controller.stub!(:current_user).and_return nil

      expect { controller.send(:authorize_admin) }.to raise_error AbstractController::ActionNotFound
    end
  end
end