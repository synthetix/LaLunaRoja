class ApplicationController < ActionController::Base
 
  helper_method :admin?
  
  protected


  def authenticate
#    authenticate_or_request_with_http_basic do |user_name, password|
#      user_name == 'admin' && password == 'PASSWORD'
#   end
    unless admin?
      redirect_to(:action => 'index', :notice => 'Unathorized Access') 
      false
    end
  end

  def admin?
    session[:password] = "foobar"
  end

end

