require 'spec_helper'

describe 'admin/home' do
  it 'should render a login page.' do
    render
    view.should render_template(:partial => 'users/_login')
  end
end