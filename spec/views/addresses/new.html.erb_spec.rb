require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/addresses/new.html.erb" do
  include AddressesHelper

  before(:each) do
    assigns[:address] = stub_model(Address,
      :new_record? => true,
      :user => ,
      :street1 => "value for street1",
      :street2 => "value for street2",
      :city => "value for city",
      :state => "value for state",
      :zipcode => "value for zipcode"
    )
  end

  it "renders new address form" do
    render

    response.should have_tag("form[action=?][method=post]", addresses_path) do
      with_tag("input#address_user[name=?]", "address[user]")
      with_tag("input#address_street1[name=?]", "address[street1]")
      with_tag("input#address_street2[name=?]", "address[street2]")
      with_tag("input#address_city[name=?]", "address[city]")
      with_tag("input#address_state[name=?]", "address[state]")
      with_tag("input#address_zipcode[name=?]", "address[zipcode]")
    end
  end
end
