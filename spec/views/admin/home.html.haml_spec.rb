require 'spec_helper'

describe 'admin/home', :type => :view do
  it 'should render a placeholder message.' do
    render
    expect(rendered).to have_selector 'h2', text: 'Admin'
    expect(rendered).to have_text 'Customize this page by implementing views/admin/home.'
  end
end