class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery
  protected
 
 def logged_in?
   ! @current_user.blank?
 end
   helper_method :logged_in?
  

end

