require 'spec_helper'

describe AdminController do
  it { should have_skip_before_filter(:authorize) }
  it { should have_before_filter(:authorize_admin) }

  describe '#home' do
    before { controller.stub!(:authorize_admin) }

    it 'should render admin/home.' do
      get :home

      response.should be_success
      response.should render_template 'admin/home'
    end
  end
end