class SessionsController < ApplicationController

  #get request
  def login
    #form to login

  end

  #post
  def confirmation
    puts '-------------Users confirmation--------'
    puts params
    puts '-------------END Users confirmation--------'

    #show a user a message regarding login status
    @user = User.find_by_email(params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      @message = 'User account or password invalid'
      render '/sessions/login'
    end
  end

  #get
  def logout
    #logout
    session[:user_id] = nil
    redirect_to '/users/login'
  end
end
