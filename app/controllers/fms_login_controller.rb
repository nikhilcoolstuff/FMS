class FmsLoginController < ApplicationController
  layout false
  def index

    if params[:username].present? && params[:password].present?
     found_user = user.where(:user_name => params[:username]).first
     if found_user
       authorized_user = found_user.authenticate(params[:password])
     end
    end

    if authorized_user
      session[:user_id] = authorized_user.id
      flash[:notice] = "you are now logged in."
      redirect_to("fms_dashboard/index")
    else
      flash[:notice] = "Invalid username/password combination."
      # render('fms_login/index')

    end
  end

  def logout
   session[:user_id] = nil
   flash[:notice] ="Logged out."
  #  redirect_to('fms_login/index')
  end
end
