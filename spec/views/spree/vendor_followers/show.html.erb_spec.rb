require 'rails_helper'

RSpec.describe "spree/vendor_followers/show", type: :view do
  before(:each) do
    @spree_vendor_follower = assign(:spree_vendor_follower, Spree::VendorFollower.create!(
      :user_id => 2,
      :vendor_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
