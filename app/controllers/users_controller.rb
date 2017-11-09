class UsersController < ApplicationController

  def index
    # @users = User.all
    # render('index') : default
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    # Create a new user
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Created succesfully. Now you can login."
      redirect_to(access_login_path)
    else
      flash[:notice] = "Invalid input"
      render('new')
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    # Load data
    @user = User.find(params[:id])
    # Update data
    if @user.update_attributes(user_params)
      flash[:notice] = "Updated succesfully"
      redirect_to(users_path)
    else
      flash[:notice] = "Invalid input"
      redirect_to('edit')
    end
  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "Deleted succesfully"
    redirect_to(users_path)
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
