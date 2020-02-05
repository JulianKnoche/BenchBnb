class Api::SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(params[:user][:username],params[:user][:password])
    if @user
      login(@user);
      render "api/users/show";
    else
      render json: {message: "NAH SON, THAT AIN'T IT"}, status: 401;
    end
  end

  def destroy
    if current_user.nil?
      render json: { message: 'No one is logged in!!!' }, status: 404
      return
    end
    logout
    render json: { message: 'Logout successful.' }
  end
end