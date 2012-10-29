require 'spec_helper'

describe AdminController do
  it { should have_skip_before_filter(:authorize).only(:home) }

  describe '#home' do
    it 'responds.' do
      get :home

      response.should be_success
      response.should render_template 'admin/home'
    end
  end
end