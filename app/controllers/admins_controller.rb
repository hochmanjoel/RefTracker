class AdminsController < ApplicationController
  def show
    @user = User.all
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      flash[:success] = "Welcome to Referral Tracker!"
      redirect_to @admin
    else
      render 'new'
    end
  end

  private
    def admin_params
      params.require(:admin).permit(:name, :email, :password,
        :password_confirmation)
    end
end
