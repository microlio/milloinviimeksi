class SessionsController < ApplicationController
  skip_before_filter :authenticate_required, :only => [:show, :create]

  def create
    begin
      user = User.authenticate(params[:user][:name], params[:user][:password])
    rescue
      flash[:warning] = 'You shall not pass!'
      redirect_to root_path
      return
    end

    flash[:notice] = 'Multipass!'
    log_user_in user
    redirect_to root_path

  end

  def log_user_in user
    session[:user_id] = user.id if user
  end

  def destroy
    reset_session
    flash[:notice] = 'You have logged out'
    redirect_to root_path
  end

  def show
  end

end
