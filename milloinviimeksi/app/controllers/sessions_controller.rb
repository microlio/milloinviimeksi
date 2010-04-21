class SessionsController < ApplicationController

  protect_from_forgery :except => [:create, :destroy]
  skip_before_filter :authenticate_required, :only => [:show, :create]

  def create
    begin
      user = User.authenticate(params[:user][:name], params[:user][:password])
    rescue
      flash[:warning] = 'Incorrect username or password!'
      redirect_to :root
      return
    end

    flash[:notice] = 'Welcome ' + user.name
    log_user_in user
    redirect_to :root

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
    redirect_to :root if logged_in?
  end

end
