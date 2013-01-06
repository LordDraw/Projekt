class AccountController < ApplicationController
  def login
    if request.post?
     @current_user = User.find_by_login_and_password(
     params[:login], params[:password])
    unless @current_user.nil?
session[:user_id] = @current_user.id
redirect_to :controller => 'tale'
end
end   
  end

  def logout
 if current_user
      flash[:notice] = 'You were logged out.'
      sign_out_and_redirect current_user
    else
      redirect_to root_path
    end

  end
end
