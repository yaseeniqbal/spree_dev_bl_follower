Spree::Vendor.class_eval do
  has_many :store_followers, class_name: 'Spree::VendorFollower'
  has_many :followers, through: :store_followers, class_name: 'Spree::User'
end