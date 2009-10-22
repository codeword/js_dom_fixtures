require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/users/index.html.erb" do
  include UsersHelper

  before(:each) do
    assigns[:users] = [
      stub_model(User,
        :first_name => "value for first_name",
        :last_name => "value for last_name",
        :user_name => "value for user_name",
        :password => "value for password",
        :email_address => "value for email_address",
        :age => 1
      ),
      stub_model(User,
        :first_name => "value for first_name",
        :last_name => "value for last_name",
        :user_name => "value for user_name",
        :password => "value for password",
        :email_address => "value for email_address",
        :age => 1
      )
    ]
  end

  it "renders a list of users" do
    render
    response.should have_tag("tr>td", "value for first_name".to_s, 2)
    response.should have_tag("tr>td", "value for last_name".to_s, 2)
    response.should have_tag("tr>td", "value for user_name".to_s, 2)
    response.should have_tag("tr>td", "value for password".to_s, 2)
    response.should have_tag("tr>td", "value for email_address".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
