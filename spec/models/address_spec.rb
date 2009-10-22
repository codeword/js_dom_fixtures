require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Address do
  before(:each) do
    @valid_attributes = {
      :user => ,
      :street1 => "value for street1",
      :street2 => "value for street2",
      :city => "value for city",
      :state => "value for state",
      :zipcode => "value for zipcode"
    }
  end

  it "should create a new instance given valid attributes" do
    Address.create!(@valid_attributes)
  end
end
