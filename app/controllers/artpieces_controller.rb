class ArtpiecesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_artpiece, only: [:show, :edit, :update, :destroy]

  def index
    @artpieces = policy_scope(Artpiece).order(created_at: :desc)

    if params.dig(:search, :query).present?
      @artpieces = Artpiece.order(created_at: :desc).global_search(params.dig(:search, :query))
      @filtered = true
    else
      @filtered = false
      @artpieces = Artpiece.order(created_at: :desc)
    end

  end

  def show
    authorize @artpiece
    @rental = Rental.new
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
      flash[:notice] = 'Artpiece created'
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
    params.require(:artpiece).permit(:category, :name, :price_per_day, :description, :artist, :photo)
  end
end
