class UsersController < ApplicationController

  #get
  def signup
    #render a view and let a user register

  end

  #post
  def confirmation
    #testing
    # puts '-------------Users confirmation--------'
    # puts user_params
    # puts '-------------END Users confirmation--------'
    #post request

    @user = User.new(user_params)
    if @user.save
      #thanks you're in!
      session[:user_id] = @user.id
      redirect_to '/'

      #finding only books by currently users
      # Book.where(:user_id => session[:user_id].to_i)
    else
      @message = 'User account already exists or passwords do not match.'
      render 'users/signup'
    end
  end

private
  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
  end

end
