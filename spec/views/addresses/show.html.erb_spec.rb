require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/addresses/show.html.erb" do
  include AddressesHelper
  before(:each) do
    assigns[:address] = @address = stub_model(Address,
      :user => ,
      :street1 => "value for street1",
      :street2 => "value for street2",
      :city => "value for city",
      :state => "value for state",
      :zipcode => "value for zipcode"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(//)
    response.should have_text(/value\ for\ street1/)
    response.should have_text(/value\ for\ street2/)
    response.should have_text(/value\ for\ city/)
    response.should have_text(/value\ for\ state/)
    response.should have_text(/value\ for\ zipcode/)
  end
end
