class ArtsController < ApplicationController
  def index
    @arts = Art.order(created_at: :desc)
  end

  def new
    @art = Art.new
  end

  def create
    @art = Art.new(art_params)
    if @art.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def art_params
    params.require(:art).permit(:image, :art_name, :story, :artist_id, :work_id)
                        .merge(user_id: current_user.id)
  end
end
