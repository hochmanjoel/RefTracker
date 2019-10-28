class ReferralsController < ApplicationController

  def index
    @referrals = Referral.all
  end

end
