class Spree::VendorFollower < Spree::Base
	belongs_to :store, class_name: 'Spree::Vendor', :foreign_key => 'vendor_id', required: true
  belongs_to :follower, class_name: Spree.user_class.name.to_s, :foreign_key => 'user_id', required: true

  validates :vendor_id, uniqueness: { scope: :user_id }


end
