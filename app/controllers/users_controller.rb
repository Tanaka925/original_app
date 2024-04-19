class UsersController < ApplicationController
  def show
    if user_signed_in?
      @user = User.find(params[:id])
      @artists = current_user.artists
    else
      redirect_to new_user_session_path
    end
  end
end
