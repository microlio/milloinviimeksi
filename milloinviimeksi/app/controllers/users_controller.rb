class UsersController < ApplicationController
  
  skip_before_filter :authenticate_required, :only => [:new, :create]

  # def show
  #   @user = User.find(params[:id])
  # end
  
  def new
    @user = User.new
  end
  
  # def edit
  #   @user = User.find(params[:id])
  # end
  
  def create
    @user = User.new(params[:user])
    
    if @user.save
      flash[:notice] = "User #{@user.name} was successfully created."
      redirect_to :root
    else
      render :action => "new"
    end
  end
  
  # def update
  #   @user = User.find(params[:id])
  #   
  #   if @user.update_attributes(params[:user])
  #     flash[:notice] = "User #{@user.name} was successfully updated."
  #     redirect_to :action => "show"
  #   else
  #     render :action => "edit"
  #   end
  # end
  
end
