require 'spec_helper'

describe Admin do
  it { should have_attribute(:user_id).with(:type => :integer, :null => false) }
end