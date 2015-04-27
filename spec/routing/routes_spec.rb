require 'spec_helper'

describe 'routes', :type => :routing do
  it 'routes GET /admin' do
    expect(admin_path).to eq '/admin'
    expect(:get => '/admin').to route_to :controller => 'admin', :action => 'home'
  end
end
