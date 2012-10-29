require 'spec_helper'

describe 'routes' do
  it 'routes GET /admin' do
    admin_path.should == '/admin'
    { :get => '/admin' }.should route_to :controller => 'admin', :action => 'home'
  end
end
