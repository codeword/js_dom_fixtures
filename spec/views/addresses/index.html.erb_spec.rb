require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/addresses/index.html.erb" do
  include AddressesHelper

  before(:each) do
    assigns[:addresses] = [
      stub_model(Address,
        :user => ,
        :street1 => "value for street1",
        :street2 => "value for street2",
        :city => "value for city",
        :state => "value for state",
        :zipcode => "value for zipcode"
      ),
      stub_model(Address,
        :user => ,
        :street1 => "value for street1",
        :street2 => "value for street2",
        :city => "value for city",
        :state => "value for state",
        :zipcode => "value for zipcode"
      )
    ]
  end

  it "renders a list of addresses" do
    render
    response.should have_tag("tr>td", .to_s, 2)
    response.should have_tag("tr>td", "value for street1".to_s, 2)
    response.should have_tag("tr>td", "value for street2".to_s, 2)
    response.should have_tag("tr>td", "value for city".to_s, 2)
    response.should have_tag("tr>td", "value for state".to_s, 2)
    response.should have_tag("tr>td", "value for zipcode".to_s, 2)
  end
end
