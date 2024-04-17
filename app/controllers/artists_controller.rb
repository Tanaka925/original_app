class ArtistsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @user = User.find(params[:user_id])
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to root_path, notice: 'アーティストプロフィールが作成されました。'
    else
      render :new
    end
  end

  def show
    if user_signed_in?
      @artists = current_user.artists
      @arts = Art.where(artist_id: @artists.ids)
    else
      redirect_to root_path
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:artist_name, :birthday)
          .merge(user_id: current_user.id)
  end
end
