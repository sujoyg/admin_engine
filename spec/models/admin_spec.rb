require 'spec_helper'

describe Admin, :type => :model do
  it { should have_attribute(:user_id).with(:type => :integer, :null => false) }
end