class NewsletterController < ApplicationController
  def sign_up
    @user = User.new
    @id = params[:id]
  end

  def submit
    @id = params[:id]
    email = params[:user][:email]
    @user = User.new(email: email, counter: 0)
    #@referrer.counter = User.fin

    if @user.save
      cookies[:h_email] = {value: @user.email}
      redirect_to '/success'
    else
      logger.info("Error saving user with email, #{email}")
      redirect_to "/sign_up/#{@id}", alert: 'Something went wrong!'
    end
  end

  def success
  end
end
