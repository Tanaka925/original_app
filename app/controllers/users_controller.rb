class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @artists = current_user.artists
  end
end
