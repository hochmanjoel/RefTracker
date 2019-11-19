class SessionsController < ApplicationController
  def new
  end

  # def create
  #   admin = Admin.find_by(email: params[:sessions][:email].downcase)
  #   if admin && admin.authenticate(params[:sessions][:password])
  #     log_in admin
  #     redirect_to admin
  #   else
  #     flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
  #     render 'new'
  #   end
  # end

  def create
  admin = Admin.find_by_email(params[:email])
  if admin && admin.authenticate(params[:password])
    sign_in admin
    redirect_to admin
  else
    flash.now[:error] = 'Invalid email/password combination'
    render 'new'
  end
end

  def destroy
  end
end
