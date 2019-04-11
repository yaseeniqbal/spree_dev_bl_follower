class CreateSpreeVendorFollowers < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_vendor_followers do |t|
      t.integer :user_id
      t.integer :vendor_id

      t.timestamps
    end
  end
end
