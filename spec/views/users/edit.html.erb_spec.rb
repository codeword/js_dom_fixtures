require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/users/edit.html.erb" do
  include UsersHelper

  before(:each) do
    assigns[:user] = @user = stub_model(User,
      :new_record? => false,
      :first_name => "value for first_name",
      :last_name => "value for last_name",
      :user_name => "value for user_name",
      :password => "value for password",
      :email_address => "value for email_address",
      :age => 1
    )
  end

  it "renders the edit user form" do
    render

    response.should have_tag("form[action=#{user_path(@user)}][method=post]") do
      with_tag('input#user_first_name[name=?]', "user[first_name]")
      with_tag('input#user_last_name[name=?]', "user[last_name]")
      with_tag('input#user_user_name[name=?]', "user[user_name]")
      with_tag('input#user_password[name=?]', "user[password]")
      with_tag('input#user_email_address[name=?]', "user[email_address]")
      with_tag('input#user_age[name=?]', "user[age]")
    end
  end
end
