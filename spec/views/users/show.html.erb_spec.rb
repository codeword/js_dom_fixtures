require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/users/show.html.erb" do
  include UsersHelper
  before(:each) do
    assigns[:user] = @user = stub_model(User,
      :first_name => "value for first_name",
      :last_name => "value for last_name",
      :user_name => "value for user_name",
      :password => "value for password",
      :email_address => "value for email_address",
      :age => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ first_name/)
    response.should have_text(/value\ for\ last_name/)
    response.should have_text(/value\ for\ user_name/)
    response.should have_text(/value\ for\ password/)
    response.should have_text(/value\ for\ email_address/)
    response.should have_text(/1/)
  end
end
