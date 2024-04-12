class ArtsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update]

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

  def show
  end

  def edit
    return unless current_user != @art.user

    redirect_to root_path
  end

  def update
    if @art.update(art_params)
      redirect_to art_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def art_params
    params.require(:art).permit(:image, :art_name, :story, :artist_id, :work_id)
                        .merge(user_id: current_user.id)
  end

  def set_item
    @art = Art.find(params[:id])
  end
end
