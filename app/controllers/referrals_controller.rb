class ReferralsController < ApplicationController
  def index
    if @access_token.credentials.token != nil
      @user = User.all
      @referral = Referral.all
    else
      redirect_to '/referral/signin'
    end
  end

  def signin
  end
end
