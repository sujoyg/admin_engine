require 'spec_helper'

describe Admin, :type => :model do
  it { should have_attribute(:account_id).with(:type => :integer, :null => false) }
end