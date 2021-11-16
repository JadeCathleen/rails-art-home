class ArtpiecesController < ApplicationController
  before_action :set_artpiece, only: [:show, :edit, :update, :destroy]


  def index
    @artpieces = policy_scope(Artpiece).order(created_at: :desc)
  end

  def show
    authorize @artpiece
  end

  def new
    @artpiece = Artpiece.new
    authorize @artpiece
  end

  def create
    @artpiece = Artpiece.new(artpiece_params)
    authorize @artpiece
    @artpiece.user_id = current_user.id
    if @artpiece.save
      redirect_to artpieces_path(@artpiece)
    else
      render :new
    end
  end

  def edit
    authorize @artpiece
  end

  def update
    authorize @artpiece
    @artpiece.update(artpiece_params)
    redirect_to artpieces_path(@artpiece)
  end

  def destroy
    authorize @artpiece
    @artpiece.destroy
    redirect_to artpieces_path
  end

  private

  def set_artpiece
    @artpiece = Artpiece.find(params[:id])
  end

  def artpiece_params
    params.require(:artpiece).permit(:category, :name, :price_per_day, :description, :artist)
  end
end
