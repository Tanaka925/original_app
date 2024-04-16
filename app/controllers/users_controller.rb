class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @artists = Artist.order(created_at: :desc)
  end
end
