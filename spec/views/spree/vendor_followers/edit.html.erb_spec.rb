require 'rails_helper'

RSpec.describe "spree/vendor_followers/edit", type: :view do
  before(:each) do
    @spree_vendor_follower = assign(:spree_vendor_follower, Spree::VendorFollower.create!(
      :user_id => 1,
      :vendor_id => 1
    ))
  end

  it "renders the edit spree_vendor_follower form" do
    render

    assert_select "form[action=?][method=?]", spree_vendor_follower_path(@spree_vendor_follower), "post" do

      assert_select "input[name=?]", "spree_vendor_follower[user_id]"

      assert_select "input[name=?]", "spree_vendor_follower[vendor_id]"
    end
  end
end
