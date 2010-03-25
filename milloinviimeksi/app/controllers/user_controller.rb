class UserController < ApplicationController
  def new
  end

  def create
    @user = User.new

    @user.name = params[:user][:name]
    @user.salt = Time.now
    @user.password = params[:user][:password]

    if @user.save

      flash[:notice] = 'ok'
      redirect_to sessions_path
    else
      render :action => "new"
    end
    

  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

end
