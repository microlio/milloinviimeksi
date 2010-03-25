class SessionController < ApplicationController
  def create
    
    begin
      user = User.authenticate(params[:user][:name], params[:user][:password])
    rescue
      flash[:warning] = 'epicfail'
      redirect_to session_path
      return
    end

    flash[:notice] = 'ok'
    log_user_in user
    redirect_to root_path

  end

  def log_user_in user
    session[:user_id] = user.id if user
  end

  def destroy
  end

  def show
  end

end
