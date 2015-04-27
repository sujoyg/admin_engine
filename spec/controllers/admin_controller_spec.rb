require 'spec_helper'

describe AdminController, :type => :controller do
  it { should have_skip_before_filter(:authorize) }
  it { should have_before_filter(:authorize_admin) }

  describe '#home' do
    before { allow(controller).to receive(:authorize_admin) }

    it 'should render admin/home.' do
      get :home

      expect(response).to have_http_status(:success)
      expect(response).to render_template 'admin/home'
    end
  end
end