class ArtsController < ApplicationController
  def index
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
    params.require(:art).permit(:image, :art_name, :artist_id, :work_id, :story)
                        .merge(user_id: current_user.id)
  end
end
