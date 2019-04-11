require 'rails_helper'

RSpec.describe "spree/vendor_followers/index", type: :view do
  before(:each) do
    assign(:spree_vendor_followers, [
      Spree::VendorFollower.create!(
        :user_id => 2,
        :vendor_id => 3
      ),
      Spree::VendorFollower.create!(
        :user_id => 2,
        :vendor_id => 3
      )
    ])
  end

  it "renders a list of spree/vendor_followers" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
