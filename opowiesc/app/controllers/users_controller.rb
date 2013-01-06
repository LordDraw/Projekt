class UsersController < ApplicationController
def login
    unless current_user
      render 
    else
      flash[:notice] = "You are already logged in."
      redirect_to root_path
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
