class SessionsController < ApplicationController


  def new


  end

  def create
    #user_id를 세션에 넣어야 한다.
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      # good scenario
      session[:user_id] = user.id
      flash[:success] = "You have successfully logged in"
      redirect_to root_path
    else
      flash.now[:error] = 'There was something wrong with your username or pwd'
      render  'new'
    end
  end

  def destroy
    sesison[:user_id] = nil
    flash[:success] = "You have successfully logged out"
    redirect_to login_path
  end


  private

    def  request_params
      params.require(:session).permit(:username, :password)
    end


end