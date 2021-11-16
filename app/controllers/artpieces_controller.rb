class ArtpiecesController < ApplicationController
  before_action :set_artpiece, only: [:show, :edit, :update, :destroy]

  def index
    @artpieces = Artpiece.all
  end

  def show
  end

  def new
    @artpiece = Artpiece.new
  end

  def create
    @artpiece = Artpiece.new(artpiece_params)
    @artpiece.user = User.find(params[:user_id])
    if @artpiece.save
      redirect_to artpieces_path(@artpiece)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @artpiece.update(artpiece_params)
    redirect_to artpieces_path(@artpiece)
  end

  def destroy
    @artpiece.destroy
    redirect_to artpieces_path
  end

  private

  def set_artpiece
    @artpiece = Artpiece.find(params[:id])
  end

  def artpiece_params
    params.require(:artpiece).permit(:type, :name, :price_per_day, :description, :artist)
  end
end
