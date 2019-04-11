require 'rails_helper'

RSpec.describe "spree/vendor_followers/new", type: :view do
  before(:each) do
    assign(:spree_vendor_follower, Spree::VendorFollower.new(
      :user_id => 1,
      :vendor_id => 1
    ))
  end

  it "renders new spree_vendor_follower form" do
    render

    assert_select "form[action=?][method=?]", spree_vendor_followers_path, "post" do

      assert_select "input[name=?]", "spree_vendor_follower[user_id]"

      assert_select "input[name=?]", "spree_vendor_follower[vendor_id]"
    end
  end
end
