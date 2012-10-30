require 'spec_helper'

describe 'admin/home' do
  it 'should render a placeholder message.' do
    render
    rendered.should have_selector 'h2', :content => 'Admin'
    rendered.should contain 'Customize this page by implementing views/admin/home.'
  end
end