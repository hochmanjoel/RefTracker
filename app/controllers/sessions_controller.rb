class SessionsController < ApplicationController
  def googleAuth
    @access_token = request.env["omniauth.auth"]
    owner = Owner.from_omniauth(@access_token)

    unless Owner.find_by email: @access_token.info.email == nil
      owner.google_token = @access_token.credentials.token
      refresh_token = @access_token.credentials.refresh_token
      owner.google_refresh_token = refresh_token if refresh_token.present?
      owner.save
      redirect_to root_path
    end

    flash[:notice] = "unable to log you in"
  end
end
