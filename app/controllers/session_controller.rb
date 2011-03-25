class SessionController < ApplicationController
  def new
    session[:password] = params[:password]
    redirect_to(posts_path, :notice => 'Successfully logged in')
  end

  def destroy
    reset_session
    redirect_to(login_path, :notice => 'Successfully logged out')
  end
end
