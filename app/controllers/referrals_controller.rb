class ReferralsController < ApplicationController
  def index
    @user = User.all
  end

  def details
  end
end
