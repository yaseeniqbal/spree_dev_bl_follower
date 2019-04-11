class Spree::VendorFollowersController < Spree::StoreController
  before_action :set_spree_vendor_follower, only: [:create,  :destroy]

  before_action :find_follower, only: [:destroy]


  # # GET /spree/vendor_followers
  # def index
  #   @spree_vendor_followers = Spree::VendorFollower.all
  # end

  # # GET /spree/vendor_followers/1
  # def show
  # end

  # GET /spree/vendor_followers/new
  # def new
  #   @spree_vendor_follower = Spree::VendorFollower.new
  # end

  # # GET /spree/vendor_followers/1/edit
  # def edit
  # end

  # POST /spree/vendor_followers
  def create
    @spree_vendor_follower = Spree::VendorFollower.new
    @spree_vendor_follower.follower = @user
    @spree_vendor_follower.store = @vendor
  end

  # # PATCH/PUT /spree/vendor_followers/1
  # def update
  #   if @spree_vendor_follower.update(spree_vendor_follower_params)
  #     redirect_to @spree_vendor_follower, notice: 'Vendor follower was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end

  # DELETE /spree/vendor_followers/1
  def destroy
    if @spree_vendor_follower.present? 
      @spree_vendor_follower.destroy
    else
      @spree_vendor_follower.errors.add(:not_found, "Store not found in your following list.")
    end
  end

  private
    def set_spree_vendor_follower
      @vendor = Spree::Vendor.find(params[:id])
      @user   = current_spree_user
    end

    def find_follower
      @spree_vendor_follower = Spree::VendorFollower.where("user_id=? AND vendor_id=?", @user.id, @vendor.id).last
    end
end
