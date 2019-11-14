class ReferralsController < ApplicationController
  def index
    @user = User.all
    @referral = Referral.all
  end

  def details
  end
end
