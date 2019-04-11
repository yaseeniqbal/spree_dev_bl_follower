Spree::User.class_eval do
  has_many :vendor_followers, class_name: 'Spree::VendorFollower'
  has_many :stores, through: :vendor_followers, class_name: 'Spree::Vendor'
end



